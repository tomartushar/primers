import argparse

if __name__=='__main__':
    parser = argparse.ArgumentParser(description="learning argument parsing")

    # Simple argument parsing
    parser.add_argument('type', type=str, help='Type of coffee') # positional argument
    parser.add_argument('--size', choices=['small', 'medium', 'large'], default='small',
                        help='size of the coffee') # optional argument
    parser.add_argument('--milk', action='store_true')

    parsed_args=parser.parse_args()
    print(parsed_args)

    # e.g. python3 parsing_command_line_arguments.py Latte --size medium --milk

    
    # # Handling argument using dictionary
    # args = [
    #     {'name':'type', 'type':str, 'help': 'Type of coffee'},
    #     {'name': '--size', 'choices': ['small', 'medium', 'large'], 'default': 'small',
    #      'help': 'size of the coffee'},
    #     {'name': '--milk', 'action': 'store_true'}
    # ]

    # for arg in args:
    #     parser.add_argument(arg['name'], **{k:v for k,v in arg.items() if k!='name'})
    
    # parsed_args=parser.parse_args()
    # print(parsed_args)

    # # e.g. python3 parsing_command_line_arguments.py Latte --size medium --milk


    # # subparser, helpful in case of multiple module
    # args = {
    #     'brew':[
    #         {'name':'type', 'type':str, 'help': 'Type of coffee'},
    #         {'name': '--size', 'choices': ['small', 'medium', 'large'], 'default': 'small',
    #         'help': 'size of the coffee'},
    #         {'name': '--milk', 'action': 'store_true'}
    #     ],
    #     'clean':[
    #         {'name': '--quick', 'type': int, 'help': 'quick flag'}
    #     ]
    # }
    
    # subparsers = parser.add_subparsers(dest='command', help = 'coffee operations')
    # for arg in args:
    #     sub_parser = subparsers.add_parser(arg, help='command for operation')
    #     for d in args[arg]:
    #         sub_parser.add_argument(d['name'], **{k:v for k,v in d.items() if k!='name'})

    # parsed_args = parser.parse_args()
    # print(parsed_args)

    # # e.g. 1. python3 parsing_command_line_arguments.py clean --quick 0 => Namespace(command='clean', quick=0)
    # #      2. python3 parsing_command_line_arguments.py brew Latte --size medium --milk => Namespace(command='brew', milk=True, size='medium', type='Latte')
    

