import argparse
from agents.summarizer import Summarizer
from agents.reviewer import Reviewer
from agents.ppt_generator import PPTGenerator

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--paper', required=True)
    args = parser.parse_args()

    s = Summarizer()
    r = Reviewer()
    p = PPTGenerator()

    print('Summary:', s.summarize(args.paper))
    print('Review:', r.review(args.paper))
    print('PPT:', p.generate(args.paper))

if __name__ == '__main__':
    main()
