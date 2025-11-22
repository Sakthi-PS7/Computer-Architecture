import sys
import gzip
import argparse

def open_maybe_gz(path):
    if path.endswith(".gz"):
        return gzip.open(path, "rt")
    else:
        return open(path, "r")

def parse_trace_lines(f):
    for line in f:
        if not line.strip():
            continue
        pcs, outcome = line.split()
        yield int(pcs), (outcome[0] == 'T')


class Perceptron32:
    def __init__(self, history_length=8):
        self.history_length = history_length
        self.num_entries = 32
        self.weights = [[0] * (history_length + 1) for _ in range(self.num_entries)]
        self.history = [1] * history_length
        self.theta = int(1.93 * history_length + 14)
    
    def get_index(self, pc):
        return pc & 31
    
    def predict(self, pc):
        idx = self.get_index(pc)
        
        y = self.weights[idx][0]
        for i in range(self.history_length):
            y += self.weights[idx][i + 1] * self.history[i]
        
        return y >= 0
    
    def update(self, pc, taken):
        idx = self.get_index(pc)
        t = 1 if taken else -1
        
        y = self.weights[idx][0]
        for i in range(self.history_length):
            y += self.weights[idx][i + 1] * self.history[i]
        
        # Train if wrong or low confidence
        if (y >= 0) != taken or abs(y) <= self.theta:
            self.weights[idx][0] += t
            for i in range(self.history_length):
                self.weights[idx][i + 1] += t * self.history[i]
        
        self.history = [t] + self.history[:-1]


def run_predictor(trace_path, history_length):
    predictor = Perceptron32(history_length)
    
    total = 0
    correct = 0
    
    with open_maybe_gz(trace_path) as f:
        for pc, taken in parse_trace_lines(f):
            if predictor.predict(pc) == taken:
                correct += 1
            predictor.update(pc, taken)
            total += 1
    
    accuracy = (correct / total * 100.0) if total > 0 else 0.0
    incorrect = total - correct
    
    return {
        "total": total,
        "correct": correct,
        "incorrect": incorrect,
        "accuracy": accuracy,
        "history_length": history_length
    }


def sweep_history(trace_path, min_h=4, max_h=16):
    best_h = None
    best_acc = 0.0
    
    print(f"Sweeping history length from {min_h} to {max_h}...")
    print(f"=" * 60)
    
    for h in range(min_h, max_h + 1):
        print(f"Testing H={h}...", end=" ", flush=True)
        stats = run_predictor(trace_path, h)
        acc = stats["accuracy"]
        
        if acc > best_acc:
            best_acc = acc
            best_h = h
        
        print(f"Accuracy={acc:.3f}%")
    
    print(f"=" * 60)
    print(f"Best history length: H={best_h} with accuracy={best_acc:.3f}%")
    return best_h, best_acc


def main():
    parser = argparse.ArgumentParser(description="Perceptron Predictor: 32 entries with adaptive weights")
    parser.add_argument("trace", help="Path to trace file (itrace.out or itrace.out.gz)")
    parser.add_argument("--history", type=int, default=8, help="History length (default: 8)")
    parser.add_argument("--sweep", action="store_true", help="Test history lengths from 4 to 16")
    args = parser.parse_args()
    
    if args.sweep:
        sweep_history(args.trace, 4, 16)
    else:
        print(f"Running Perceptron Predictor (32 entries, H={args.history})...")
        stats = run_predictor(args.trace, args.history)
        print(f"\nPerceptron Predictor: 32 entries, History={stats['history_length']}")
        print(f"=" * 60)
        print(f"Total branches       : {stats['total']:,}")
        print(f"Correct predictions  : {stats['correct']:,}")
        print(f"Incorrect predictions: {stats['incorrect']:,}")
        print(f"Accuracy             : {stats['accuracy']:.3f}%")
        print(f"\nThreshold (θ)        : {int(1.93 * stats['history_length'] + 14)}")


if __name__ == "__main__":
    main()
