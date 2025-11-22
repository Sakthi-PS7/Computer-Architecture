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


class GShare32:
    def __init__(self, history_bits):
        self.history_bits = history_bits
        self.history = 0
        # Initialize to weakly not-taken
        self.table = [1] * 32
    
    def get_index(self, pc):
        # XOR pattern history with branch address, then mask to 5 bits
        return (pc ^ self.history) & 31
    
    def predict(self, pc):
        idx = self.get_index(pc)
        return self.table[idx] >= 2
    
    def update(self, pc, taken):
        idx = self.get_index(pc)
        counter = self.table[idx]
        
        if taken:
            if counter < 3:
                counter += 1
        else:
            if counter > 0:
                counter -= 1
        
        self.table[idx] = counter
        
        # Update pattern history register
        self.history = (self.history << 1) | (1 if taken else 0)
        self.history &= (1 << self.history_bits) - 1


def run_predictor(trace_path, history_bits):
    predictor = GShare32(history_bits)
    
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
        "history_bits": history_bits
    }


def sweep_n(trace_path, min_h=1, max_h=16):
    best_h = None
    best_acc = 0.0
    
    print(f"Sweeping N values from {min_h} to {max_h}...")
    print(f"=" * 50)
    
    for h in range(min_h, max_h + 1):
        stats = run_predictor(trace_path, h)
        acc = stats["accuracy"]
        
        if acc > best_acc:
            best_acc = acc
            best_h = h
        
        print(f"N={h:2d}  Accuracy={acc:.3f}%")
    
    print(f"=" * 50)
    print(f"Best history length: N={best_h} with accuracy={best_acc:.3f}%")
    return best_h, best_acc


def main():
    parser = argparse.ArgumentParser(description="Predictor 3: GShare, 32 entries with Pattern History")
    parser.add_argument("trace", help="Path to trace file (itrace.out or itrace.out.gz)")
    parser.add_argument("--n", type=int, default=8, help="History bits (default: 8)")
    parser.add_argument("--sweep", action="store_true", help="Test N values from 1 to 16")
    args = parser.parse_args()
    
    if args.sweep:
        sweep_n(args.trace, 1, 16)
    else:
        stats = run_predictor(args.trace, args.n)
        print(f"Predictor 3: GShare, 32 entries, N={stats['history_bits']}")
        print(f"=" * 50)
        print(f"Total branches      : {stats['total']:,}")
        print(f"Correct predictions : {stats['correct']:,}")
        print(f"Incorrect predictions: {stats['incorrect']:,}")
        print(f"Accuracy            : {stats['accuracy']:.3f}%")


if __name__ == "__main__":
    main()
