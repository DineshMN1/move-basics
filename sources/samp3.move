address addr {

    module one {
        friend addr::two;
        friend addr::three;
        
        public(friend) fun get_value(): u64 {
            return 100
        }

    /*
        #[view]
        public fun get_prices(): u64 {
            // Enter logic
        }
    */

    }

    module two {
        #[test_only]
        use std::debug::print;

        #[test]
        fun test_function(){
            let result = addr::one::get_value();
            print(&result);
        }
    }

    module three {
        #[test_only]
        use std::debug::print;

        #[test]
        fun test_function(){
            let result = addr::one::get_value();
            print(&result);
        }
        
    }
}