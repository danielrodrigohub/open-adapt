.class public final Ln5/i$a;
.super Ljava/lang/Object;
.source "VideoDecoderGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final q:[F

.field public static final r:[Ljava/lang/String;

.field public static final s:Ljava/nio/FloatBuffer;


# instance fields
.field public final h:Landroid/opengl/GLSurfaceView;

.field public final i:[I

.field public final j:[I

.field public final k:[I

.field public final l:[I

.field public final m:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lq3/k;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lm5/k;

.field public o:I

.field public p:Lq3/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Ln5/i$a;->q:[F

    const-string v0, "y_tex"

    const-string v1, "u_tex"

    const-string v2, "v_tex"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln5/i$a;->r:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_1

    .line 4
    invoke-static {v0}, Lda/e;->g([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Ln5/i$a;->s:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f94fdf4
        0x3f94fdf4
        0x3f94fdf4
        0x0
        -0x41a5e354
        0x40072b02
        0x3fe58106
        -0x40f78d50
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln5/i$a;->h:Landroid/opengl/GLSurfaceView;

    const/4 p1, 0x3

    new-array v0, p1, [I

    .line 3
    iput-object v0, p0, Ln5/i$a;->i:[I

    new-array v0, p1, [I

    .line 4
    iput-object v0, p0, Ln5/i$a;->j:[I

    new-array v0, p1, [I

    .line 5
    iput-object v0, p0, Ln5/i$a;->k:[I

    new-array v0, p1, [I

    .line 6
    iput-object v0, p0, Ln5/i$a;->l:[I

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Ln5/i$a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 8
    iget-object v1, p0, Ln5/i$a;->k:[I

    iget-object v2, p0, Ln5/i$a;->l:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .line 1
    iget-object p1, p0, Ln5/i$a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq3/k;

    if-nez p1, :cond_0

    .line 3
    iget-object v1, p0, Ln5/i$a;->p:Lq3/k;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 4
    iget-object v1, p0, Ln5/i$a;->p:Lq3/k;

    if-eqz v1, :cond_1

    .line 5
    throw v0

    .line 6
    :cond_1
    iput-object p1, p0, Ln5/i$a;->p:Lq3/k;

    .line 7
    :cond_2
    iget-object p1, p0, Ln5/i$a;->p:Lq3/k;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p1, Ln5/i$a;->q:[F

    .line 10
    iget v1, p0, Ln5/i$a;->o:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 11
    throw v0
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    .line 1
    new-instance p1, Lm5/k;

    const-string p2, "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

    const-string v0, "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

    invoke-direct {p1, p2, v0}, Lm5/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Ln5/i$a;->n:Lm5/k;

    const-string p2, "in_pos"

    .line 2
    invoke-virtual {p1, p2}, Lm5/k;->b(Ljava/lang/String;)I

    move-result v0

    .line 3
    sget-object v5, Ln5/i$a;->s:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 4
    iget-object p1, p0, Ln5/i$a;->j:[I

    iget-object p2, p0, Ln5/i$a;->n:Lm5/k;

    const-string v0, "in_tc_y"

    invoke-virtual {p2, v0}, Lm5/k;->b(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 5
    iget-object p1, p0, Ln5/i$a;->j:[I

    iget-object p2, p0, Ln5/i$a;->n:Lm5/k;

    const-string v1, "in_tc_u"

    invoke-virtual {p2, v1}, Lm5/k;->b(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x1

    aput p2, p1, v1

    .line 6
    iget-object p1, p0, Ln5/i$a;->j:[I

    iget-object p2, p0, Ln5/i$a;->n:Lm5/k;

    const-string v1, "in_tc_v"

    invoke-virtual {p2, v1}, Lm5/k;->b(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x2

    aput p2, p1, v1

    .line 7
    iget-object p1, p0, Ln5/i$a;->n:Lm5/k;

    const-string p2, "mColorConversion"

    invoke-virtual {p1, p2}, Lm5/k;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln5/i$a;->o:I

    .line 8
    invoke-static {}, Lda/e;->f()V

    .line 9
    iget-object p1, p0, Ln5/i$a;->i:[I

    const/4 p2, 0x3

    invoke-static {p2, p1, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_0
    if-ge v0, p2, :cond_0

    .line 10
    iget-object p1, p0, Ln5/i$a;->n:Lm5/k;

    sget-object v1, Ln5/i$a;->r:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lm5/k;->c(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c0

    add-int/2addr p1, v0

    .line 11
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p1, 0xde1

    .line 12
    iget-object v1, p0, Ln5/i$a;->i:[I

    aget v1, v1, v0

    invoke-static {p1, v1}, Lda/e;->e(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lda/e;->f()V

    .line 14
    invoke-static {}, Lda/e;->f()V

    return-void
.end method
