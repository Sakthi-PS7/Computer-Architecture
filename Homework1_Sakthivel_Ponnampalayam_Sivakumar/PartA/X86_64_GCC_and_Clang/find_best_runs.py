#!/usr/bin/env python3

import sys
import re
import os
import csv
from pathlib import Path

def parse_log(path):
    # Returns list of (iteration:int, dps:int)
    it_re = re.compile(r'Iteration\s*No:\s*(\d+)', re.IGNORECASE)
    dps_re = re.compile(r'Dhrystones per Second:\s*([0-9]+)')

    pairs = []
    current_iter = None
    implicit_iter = 0
    with open(path, 'r', errors='replace') as f:
        for line in f:
            m = it_re.search(line)
            if m:
                try:
                    current_iter = int(m.group(1))
                except ValueError:
                    current_iter = None
                continue
            m2 = dps_re.search(line)
            if m2:
                dps = int(m2.group(1))
                if current_iter is None:
                    implicit_iter += 1
                    pairs.append((implicit_iter, dps))
                else:
                    pairs.append((current_iter, dps))
                # reset current_iter so repeated dps lines without new Iteration map to next implicit
                current_iter = None
    return pairs

def find_best(pairs):
    if not pairs:
        return None
    # choose the pair with maximum dps; in ties, pick first occurrence
    best = max(pairs, key=lambda x: x[1])
    return best

def main():
    if len(sys.argv) < 2:
        print('Usage: find_best_runs.py <runs_dir> [--csv out.csv]')
        sys.exit(2)
    runs_dir = Path(sys.argv[1])
    csv_out = None
    if len(sys.argv) >= 3 and sys.argv[2] == '--csv':
        if len(sys.argv) < 4:
            print('Usage: find_best_runs.py <runs_dir> --csv out.csv')
            sys.exit(2)
        csv_out = Path(sys.argv[3])

    if not runs_dir.exists() or not runs_dir.is_dir():
        print(f'Error: {runs_dir} does not exist or is not a directory')
        sys.exit(3)

    rows = []
    # find .log files directly under runs_dir (non-recursive)
    for p in sorted(runs_dir.glob('*.log')):
        pairs = parse_log(p)
        best = find_best(pairs)
        if best:
            rows.append((str(p.name), best[0], best[1]))
        else:
            rows.append((str(p.name), '', ''))

    # Print table
    print('\nBest iterations per log:')
    print(f"{'File':40} {'Iter':>6} {'Dhrystones/sec':>16}")
    print('-' * 66)
    for name, it, dps in rows:
        print(f"{name:40} {str(it):>6} {str(dps):>16}")

    if csv_out:
        with open(csv_out, 'w', newline='') as csvf:
            w = csv.writer(csvf)
            w.writerow(['file','best_iteration','dhrystones_per_sec'])
            for name, it, dps in rows:
                w.writerow([name, it, dps])
        print(f"\nWrote CSV summary to: {csv_out}")

if __name__ == '__main__':
    main()
