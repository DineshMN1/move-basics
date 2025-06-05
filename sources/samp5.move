module addr::ErrorHandle {
    use std::debug::print;
    use std::string::{String, utf8};

     fun sample_abort_error(value: String) {
        if(value == utf8(b"dineshmn"))
            print(&utf8(b"Correct!"))
        else
            abort 123
    }

    fun sample_assert_error(value: String){
       assert!(value == utf8(b"dineshmn"), 123);
       print(&utf8(b"Correct!"))
    }

    #[test]
    #[expected_failurape]
    fun test_abort(){
        sample_abort_error(utf8(b"dineshmn1"));
    }

    #[test]
    fun test_assert(){
        sample_assert_error(utf8(b"dineshmn1"));
    }
}