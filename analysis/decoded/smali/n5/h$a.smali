.class public final Ln5/h$a;
.super Landroid/os/HandlerThread;
.source "PlaceholderSurface.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln5/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public h:Lm5/h;

.field public i:Landroid/os/Handler;

.field public j:Ljava/lang/Error;

.field public k:Ljava/lang/RuntimeException;

.field public l:Ln5/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ExoPlayer:PlaceholderSurface"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 14

    .line 1
    iget-object v0, p0, Ln5/h$a;->h:Lm5/h;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ln5/h$a;->h:Lm5/h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v10, 0x2

    new-array v3, v10, [I

    const/4 v11, 0x1

    .line 5
    invoke-static {v2, v3, v1, v3, v11}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6
    iput-object v2, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    new-array v12, v11, [Landroid/opengl/EGLConfig;

    new-array v13, v11, [I

    .line 7
    sget-object v3, Lm5/h;->n:[I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v5, v12

    move-object v8, v13

    .line 8
    invoke-static/range {v2 .. v9}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_7

    aget v4, v13, v1

    if-lez v4, :cond_7

    aget-object v4, v12, v1

    if-eqz v4, :cond_7

    aget-object v2, v12, v1

    .line 9
    iget-object v4, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    const/4 v5, 0x5

    if-nez p1, :cond_0

    new-array v3, v3, [I

    .line 10
    fill-array-data v3, :array_0

    goto :goto_0

    :cond_0
    new-array v3, v5, [I

    .line 11
    fill-array-data v3, :array_1

    .line 12
    :goto_0
    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 13
    invoke-static {v4, v2, v6, v3, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 14
    iput-object v3, v0, Lm5/h;->k:Landroid/opengl/EGLContext;

    .line 15
    iget-object v4, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    if-ne p1, v11, :cond_1

    .line 16
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_2

    :cond_1
    if-ne p1, v10, :cond_2

    const/4 v5, 0x7

    new-array v5, v5, [I

    .line 17
    fill-array-data v5, :array_2

    goto :goto_1

    :cond_2
    new-array v5, v5, [I

    .line 18
    fill-array-data v5, :array_3

    .line 19
    :goto_1
    invoke-static {v4, v2, v5, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 20
    :goto_2
    invoke-static {v4, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 21
    iput-object v2, v0, Lm5/h;->l:Landroid/opengl/EGLSurface;

    .line 22
    iget-object v2, v0, Lm5/h;->i:[I

    .line 23
    invoke-static {v11, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 24
    invoke-static {}, Lda/e;->f()V

    .line 25
    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget-object v3, v0, Lm5/h;->i:[I

    aget v3, v3, v1

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, v0, Lm5/h;->m:Landroid/graphics/SurfaceTexture;

    .line 26
    invoke-virtual {v2, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 27
    new-instance v0, Ln5/h;

    iget-object v2, p0, Ln5/h$a;->h:Lm5/h;

    .line 28
    iget-object v2, v2, Lm5/h;->m:Landroid/graphics/SurfaceTexture;

    .line 29
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3

    move v1, v11

    .line 30
    :cond_3
    invoke-direct {v0, p0, v2, v1}, Ln5/h;-><init>(Ln5/h$a;Landroid/graphics/SurfaceTexture;Z)V

    iput-object v0, p0, Ln5/h$a;->l:Ln5/h;

    return-void

    .line 31
    :cond_4
    new-instance p1, Lm5/h$a;

    const-string v0, "eglMakeCurrent failed"

    invoke-direct {p1, v0}, Lm5/h$a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_5
    new-instance p1, Lm5/h$a;

    const-string v0, "eglCreatePbufferSurface failed"

    invoke-direct {p1, v0}, Lm5/h$a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_6
    new-instance p1, Lm5/h$a;

    const-string v0, "eglCreateContext failed"

    invoke-direct {p1, v0}, Lm5/h$a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_7
    new-instance p1, Lm5/h$a;

    new-array v0, v3, [Ljava/lang/Object;

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    aget v2, v13, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v11

    aget-object v1, v12, v1

    aput-object v1, v0, v10

    const-string v1, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    .line 36
    invoke-static {v1, v0}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lm5/h$a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_8
    new-instance p1, Lm5/h$a;

    const-string v0, "eglInitialize failed"

    invoke-direct {p1, v0}, Lm5/h$a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_9
    new-instance p1, Lm5/h$a;

    const-string v0, "eglGetDisplay failed"

    invoke-direct {p1, v0}, Lm5/h$a;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_3
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Ln5/h$a;->h:Lm5/h;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ln5/h$a;->h:Lm5/h;

    .line 4
    iget-object v1, v0, Lm5/h;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v1, 0x13

    const/4 v2, 0x0

    .line 5
    :try_start_0
    iget-object v3, v0, Lm5/h;->m:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v3, 0x1

    .line 7
    iget-object v4, v0, Lm5/h;->i:[I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    iget-object v3, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    if-eqz v3, :cond_1

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v3, v4}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    iget-object v3, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 10
    :cond_1
    iget-object v3, v0, Lm5/h;->l:Landroid/opengl/EGLSurface;

    if-eqz v3, :cond_2

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v3, v4}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 11
    iget-object v3, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    iget-object v4, v0, Lm5/h;->l:Landroid/opengl/EGLSurface;

    invoke-static {v3, v4}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 12
    :cond_2
    iget-object v3, v0, Lm5/h;->k:Landroid/opengl/EGLContext;

    if-eqz v3, :cond_3

    .line 13
    iget-object v4, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 14
    :cond_3
    sget v3, Lm5/g0;->a:I

    if-lt v3, v1, :cond_4

    .line 15
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 16
    :cond_4
    iget-object v1, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    if-eqz v1, :cond_5

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 17
    iget-object v1, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 18
    :cond_5
    iput-object v2, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    .line 19
    iput-object v2, v0, Lm5/h;->k:Landroid/opengl/EGLContext;

    .line 20
    iput-object v2, v0, Lm5/h;->l:Landroid/opengl/EGLSurface;

    .line 21
    iput-object v2, v0, Lm5/h;->m:Landroid/graphics/SurfaceTexture;

    return-void

    :catchall_0
    move-exception v3

    .line 22
    iget-object v4, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    if-eqz v4, :cond_6

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v4, v5}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 23
    iget-object v4, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v4, v5, v5, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 24
    :cond_6
    iget-object v4, v0, Lm5/h;->l:Landroid/opengl/EGLSurface;

    if-eqz v4, :cond_7

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v4, v5}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 25
    iget-object v4, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    iget-object v5, v0, Lm5/h;->l:Landroid/opengl/EGLSurface;

    invoke-static {v4, v5}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 26
    :cond_7
    iget-object v4, v0, Lm5/h;->k:Landroid/opengl/EGLContext;

    if-eqz v4, :cond_8

    .line 27
    iget-object v5, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    invoke-static {v5, v4}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 28
    :cond_8
    sget v4, Lm5/g0;->a:I

    if-lt v4, v1, :cond_9

    .line 29
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 30
    :cond_9
    iget-object v1, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    if-eqz v1, :cond_a

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v4}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 31
    iget-object v1, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 32
    :cond_a
    iput-object v2, v0, Lm5/h;->j:Landroid/opengl/EGLDisplay;

    .line 33
    iput-object v2, v0, Lm5/h;->k:Landroid/opengl/EGLContext;

    .line 34
    iput-object v2, v0, Lm5/h;->l:Landroid/opengl/EGLSurface;

    .line 35
    iput-object v2, v0, Lm5/h;->m:Landroid/graphics/SurfaceTexture;

    .line 36
    throw v3
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ln5/h$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to release placeholder surface"

    .line 4
    invoke-static {v0, v2, p1}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return v1

    :catchall_1
    move-exception p1

    .line 5
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 6
    throw p1

    .line 7
    :cond_1
    :try_start_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Ln5/h$a;->a(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 8
    monitor-enter p0

    .line 9
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 10
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_4
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    .line 11
    invoke-static {v0, v2, p1}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iput-object p1, p0, Ln5/h$a;->j:Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 13
    monitor-enter p0

    .line 14
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 15
    monitor-exit p0

    goto :goto_2

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw p1

    :catch_1
    move-exception p1

    :try_start_6
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    .line 16
    invoke-static {v0, v2, p1}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    iput-object p1, p0, Ln5/h$a;->k:Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 18
    monitor-enter p0

    .line 19
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 20
    monitor-exit p0

    :goto_2
    return v1

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw p1

    .line 21
    :goto_3
    monitor-enter p0

    .line 22
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 23
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 24
    throw p1

    :catchall_6
    move-exception p1

    .line 25
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw p1
.end method
