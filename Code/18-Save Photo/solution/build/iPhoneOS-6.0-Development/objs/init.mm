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
void MREP_7DE64F0177A845818836E91B25AC8F08(void *, void *);
void MREP_D96BC8D24D56415686B676086A8EE2D5(void *, void *);
void MREP_A235A4E902EA4899ADF71E912410018A(void *, void *);
void MREP_838D4090C84E455887584663F151011B(void *, void *);
void MREP_0837863BE1AE417D84900F272E7D4163(void *, void *);
void MREP_8724364D6A654F2F89F3813E75552231(void *, void *);
void MREP_D50C020815C24AE2BFC1236A1ABC5BDB(void *, void *);
void MREP_B5AF5802B9094EE1A1BA25B093CB2E4F(void *, void *);
void MREP_56049BC5B5D1436387E55AB7D99F59DE(void *, void *);
void MREP_98309588C2F642E2A6A29701A5D4D5CC(void *, void *);
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
MREP_7DE64F0177A845818836E91B25AC8F08(self, 0);
MREP_D96BC8D24D56415686B676086A8EE2D5(self, 0);
MREP_A235A4E902EA4899ADF71E912410018A(self, 0);
MREP_838D4090C84E455887584663F151011B(self, 0);
MREP_0837863BE1AE417D84900F272E7D4163(self, 0);
MREP_8724364D6A654F2F89F3813E75552231(self, 0);
MREP_D50C020815C24AE2BFC1236A1ABC5BDB(self, 0);
MREP_B5AF5802B9094EE1A1BA25B093CB2E4F(self, 0);
MREP_56049BC5B5D1436387E55AB7D99F59DE(self, 0);
MREP_98309588C2F642E2A6A29701A5D4D5CC(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
