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
void MREP_1A1C920A786744B7A0EE0972B60E7DA0(void *, void *);
void MREP_15E16C2E65EE4D8E8B282678FBC1E0DA(void *, void *);
void MREP_9FBBB67B6AC54245B0C1CADBBA380C1D(void *, void *);
void MREP_E1E51FEA702C4A54AFCB4FD08BE7F722(void *, void *);
void MREP_2BC12BEDFE6D434894725BEE7BB6C711(void *, void *);
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
MREP_1A1C920A786744B7A0EE0972B60E7DA0(self, 0);
MREP_15E16C2E65EE4D8E8B282678FBC1E0DA(self, 0);
MREP_9FBBB67B6AC54245B0C1CADBBA380C1D(self, 0);
MREP_E1E51FEA702C4A54AFCB4FD08BE7F722(self, 0);
MREP_2BC12BEDFE6D434894725BEE7BB6C711(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
