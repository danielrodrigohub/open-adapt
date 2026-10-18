.class public final Ly2/s;
.super Ljava/lang/Object;
.source "HardwareConfigState.java"


# static fields
.field public static final g:Z

.field public static final h:Z

.field public static final i:Ljava/io/File;

.field public static volatile j:Ly2/s;

.field public static volatile k:I


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public d:I

.field public e:Z

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-ge v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sput-boolean v3, Ly2/s;->g:Z

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2
    :goto_1
    sput-boolean v1, Ly2/s;->h:Z

    .line 3
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Ly2/s;->i:Ljava/io/File;

    const/4 v0, -0x1

    .line 4
    sput v0, Ly2/s;->k:I

    return-void
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Ly2/s;->e:Z

    .line 3
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Ly2/s;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "SC-04J"

    const-string v6, "SM-N935"

    const-string v7, "SM-J720"

    const-string v8, "SM-G570F"

    const-string v9, "SM-G570M"

    const-string v10, "SM-G960"

    const-string v11, "SM-G965"

    const-string v12, "SM-G935"

    const-string v13, "SM-G930"

    const-string v14, "SM-A520"

    const-string v15, "SM-A720F"

    const-string v16, "moto e5"

    const-string v17, "moto e5 play"

    const-string v18, "moto e5 plus"

    const-string v19, "moto e5 cruise"

    const-string v20, "moto g(6) forge"

    const-string v21, "moto g(6) play"

    .line 5
    filled-new-array/range {v5 .. v21}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-nez v2, :cond_4

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-eq v2, v4, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    const-string v5, "LG-M250"

    const-string v6, "LG-M320"

    const-string v7, "LG-Q710AL"

    const-string v8, "LG-Q710PL"

    const-string v9, "LGM-K121K"

    const-string v10, "LGM-K121L"

    const-string v11, "LGM-K121S"

    const-string v12, "LGM-X320K"

    const-string v13, "LGM-X320L"

    const-string v14, "LGM-X320S"

    const-string v15, "LGM-X401L"

    const-string v16, "LGM-X401S"

    const-string v17, "LM-Q610.FG"

    const-string v18, "LM-Q610.FGN"

    const-string v19, "LM-Q617.FG"

    const-string v20, "LM-Q617.FGN"

    const-string v21, "LM-Q710.FG"

    const-string v22, "LM-Q710.FGN"

    const-string v23, "LM-X220PM"

    const-string v24, "LM-X220QMA"

    const-string v25, "LM-X410PM"

    .line 8
    filled-new-array/range {v5 .. v25}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 9
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    move v1, v3

    .line 10
    :goto_3
    iput-boolean v1, v0, Ly2/s;->a:Z

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_5

    const/16 v1, 0x4e20

    .line 12
    iput v1, v0, Ly2/s;->b:I

    .line 13
    iput v3, v0, Ly2/s;->c:I

    goto :goto_4

    :cond_5
    const/16 v1, 0x2bc

    .line 14
    iput v1, v0, Ly2/s;->b:I

    const/16 v1, 0x80

    .line 15
    iput v1, v0, Ly2/s;->c:I

    :goto_4
    return-void
.end method

.method public static a()Ly2/s;
    .locals 2

    .line 1
    sget-object v0, Ly2/s;->j:Ly2/s;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Ly2/s;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Ly2/s;->j:Ly2/s;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ly2/s;

    invoke-direct {v1}, Ly2/s;-><init>()V

    sput-object v1, Ly2/s;->j:Ly2/s;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Ly2/s;->j:Ly2/s;

    return-object v0
.end method


# virtual methods
.method public final b(IIZZ)Z
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p3, :cond_1

    const-string p1, "HardwareConfig"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "HardwareConfig"

    const-string p2, "Hardware config disallowed by caller"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 3
    :cond_1
    iget-boolean p3, p0, Ly2/s;->a:Z

    if-nez p3, :cond_3

    const-string p1, "HardwareConfig"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "HardwareConfig"

    const-string p2, "Hardware config disallowed by device model"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 6
    :cond_3
    sget-boolean p3, Ly2/s;->h:Z

    if-nez p3, :cond_5

    const-string p1, "HardwareConfig"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "HardwareConfig"

    const-string p2, "Hardware config disallowed by sdk"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    .line 9
    :cond_5
    sget-boolean p3, Ly2/s;->g:Z

    const/4 v2, 0x1

    if-eqz p3, :cond_6

    iget-object p3, p0, Ly2/s;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_6

    move p3, v2

    goto :goto_0

    :cond_6
    move p3, v1

    :goto_0
    if-eqz p3, :cond_8

    const-string p1, "HardwareConfig"

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "HardwareConfig"

    const-string p2, "Hardware config disallowed by app state"

    .line 12
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1

    :cond_8
    if-eqz p4, :cond_a

    const-string p1, "HardwareConfig"

    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "HardwareConfig"

    const-string p2, "Hardware config disallowed because exif orientation is required"

    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v1

    .line 15
    :cond_a
    iget p3, p0, Ly2/s;->c:I

    if-ge p1, p3, :cond_c

    const-string p1, "HardwareConfig"

    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "HardwareConfig"

    const-string p2, "Hardware config disallowed because width is too small"

    .line 17
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v1

    :cond_c
    if-ge p2, p3, :cond_e

    const-string p1, "HardwareConfig"

    .line 18
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "HardwareConfig"

    const-string p2, "Hardware config disallowed because height is too small"

    .line 19
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v1

    .line 20
    :cond_e
    monitor-enter p0

    .line 21
    :try_start_0
    iget p1, p0, Ly2/s;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Ly2/s;->d:I

    const/16 p2, 0x32

    if-lt p1, p2, :cond_11

    .line 22
    iput v1, p0, Ly2/s;->d:I

    .line 23
    sget-object p1, Ly2/s;->i:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    .line 24
    sget p2, Ly2/s;->k:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_f

    .line 25
    sget p2, Ly2/s;->k:I

    goto :goto_1

    .line 26
    :cond_f
    iget p2, p0, Ly2/s;->b:I

    :goto_1
    int-to-long p2, p2

    int-to-long v3, p1

    cmp-long p4, v3, p2

    if-gez p4, :cond_10

    move p4, v2

    goto :goto_2

    :cond_10
    move p4, v1

    .line 27
    :goto_2
    iput-boolean p4, p0, Ly2/s;->e:Z

    if-nez p4, :cond_11

    const-string p4, "Downsampler"

    const/4 v3, 0x5

    .line 28
    invoke-static {p4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_11

    const-string p4, "Downsampler"

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Excluding HARDWARE bitmap config because we\'re over the file descriptor limit, file descriptors "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", limit "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_11
    iget-boolean p1, p0, Ly2/s;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez p1, :cond_13

    const-string p1, "HardwareConfig"

    .line 31
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "HardwareConfig"

    const-string p2, "Hardware config disallowed because there are insufficient FDs"

    .line 32
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v1

    :cond_13
    return v2

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0

    throw p1
.end method

.method public final c(IILandroid/graphics/BitmapFactory$Options;ZZ)Z
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p4, p5}, Ly2/s;->b(IIZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object p2, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_0
    return p1
.end method
