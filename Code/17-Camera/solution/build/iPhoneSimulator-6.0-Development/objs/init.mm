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
void MREP_B8701369E3E7478FB5AF1C88BF26AA04(void *, void *);
void MREP_4F87ED34D6E94384B27FF60C84330C9A(void *, void *);
void MREP_435D959324C940CF893DB136E15A70DF(void *, void *);
void MREP_3E9E88A731AE4904A6D4E1F981A29427(void *, void *);
void MREP_9A84D1ECB44543229095A3FBE3464A97(void *, void *);
void MREP_97750F7B391B459B83CD3423D5B6F57A(void *, void *);
void MREP_4D13F8460DC34604BB5112F77C3928EF(void *, void *);
void MREP_4DCC857D08D248318CBD942E2782D5E2(void *, void *);
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
MREP_B8701369E3E7478FB5AF1C88BF26AA04(self, 0);
MREP_4F87ED34D6E94384B27FF60C84330C9A(self, 0);
MREP_435D959324C940CF893DB136E15A70DF(self, 0);
MREP_3E9E88A731AE4904A6D4E1F981A29427(self, 0);
MREP_9A84D1ECB44543229095A3FBE3464A97(self, 0);
MREP_97750F7B391B459B83CD3423D5B6F57A(self, 0);
MREP_4D13F8460DC34604BB5112F77C3928EF(self, 0);
MREP_4DCC857D08D248318CBD942E2782D5E2(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
