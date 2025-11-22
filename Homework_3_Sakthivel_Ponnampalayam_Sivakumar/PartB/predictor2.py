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


class TwoBit32:
    def __init__(self):
        # Initialize to weakly not-taken (state 1)
        self.table = [1] * 32
    
    def get_index(self, pc):
        # Index using branch address directly (no tag)
        return pc & 31
    
    def predict(self, pc):
        idx = self.get_index(pc)
        # Predict taken if counter >= 2
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


def run_predictor(trace_path):
    predictor = TwoBit32()
    
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
        "accuracy": accuracy
    }


def main():
    parser = argparse.ArgumentParser(description="Predictor 2: 2-bit, 32 entries")
    parser.add_argument("trace", help="Path to trace file (itrace.out or itrace.out.gz)")
    args = parser.parse_args()
    
    stats = run_predictor(args.trace)
    print(f"Predictor 2: 2-bit, 32 entries")
    print(f"=" * 50)
    print(f"Total branches      : {stats['total']:,}")
    print(f"Correct predictions : {stats['correct']:,}")
    print(f"Incorrect predictions: {stats['incorrect']:,}")
    print(f"Accuracy            : {stats['accuracy']:.3f}%")


if __name__ == "__main__":
    main()
