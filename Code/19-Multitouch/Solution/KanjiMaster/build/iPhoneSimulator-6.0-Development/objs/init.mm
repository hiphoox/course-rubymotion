#import <UIKit/UIKit.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_92431CE64CFB486EA14D13A5AFA67D84(void *, void *);
void MREP_15B6AB4A6716458C813009F659F604D5(void *, void *);
void MREP_1C36ACBF5A7247029ED30FF957AF4171(void *, void *);
void MREP_64D04DB0722D4FC5B4A65A488CFEAC69(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
	try {
	    void *self = rb_vm_top_self();
MREP_92431CE64CFB486EA14D13A5AFA67D84(self, 0);
MREP_15B6AB4A6716458C813009F659F604D5(self, 0);
MREP_1C36ACBF5A7247029ED30FF957AF4171(self, 0);
MREP_64D04DB0722D4FC5B4A65A488CFEAC69(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
