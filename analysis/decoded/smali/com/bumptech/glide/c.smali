.class public final Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "Glide.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/c$a;
    }
.end annotation


# static fields
.field public static volatile p:Lcom/bumptech/glide/c;

.field public static volatile q:Z


# instance fields
.field public final h:Ls2/d;

.field public final i:Lt2/h;

.field public final j:Lcom/bumptech/glide/e;

.field public final k:Lcom/bumptech/glide/h;

.field public final l:Ls2/b;

.field public final m:Le3/l;

.field public final n:Le3/c;

.field public final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr2/m;Lt2/h;Ls2/d;Ls2/b;Le3/l;Le3/c;ILcom/bumptech/glide/c$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/f;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lr2/m;",
            "Lt2/h;",
            "Ls2/d;",
            "Ls2/b;",
            "Le3/l;",
            "Le3/c;",
            "I",
            "Lcom/bumptech/glide/c$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/k<",
            "**>;>;",
            "Ljava/util/List<",
            "Lh3/f<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/bumptech/glide/f;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object/from16 v11, p12

    .line 1
    const-class v3, Ln2/a;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/Integer;

    const-class v7, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/bumptech/glide/c;->o:Ljava/util/ArrayList;

    .line 3
    iput-object v2, v1, Lcom/bumptech/glide/c;->h:Ls2/d;

    .line 4
    iput-object v4, v1, Lcom/bumptech/glide/c;->l:Ls2/b;

    move-object/from16 v8, p3

    .line 5
    iput-object v8, v1, Lcom/bumptech/glide/c;->i:Lt2/h;

    move-object/from16 v8, p6

    .line 6
    iput-object v8, v1, Lcom/bumptech/glide/c;->m:Le3/l;

    move-object/from16 v8, p7

    .line 7
    iput-object v8, v1, Lcom/bumptech/glide/c;->n:Le3/c;

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 9
    new-instance v9, Lcom/bumptech/glide/h;

    invoke-direct {v9}, Lcom/bumptech/glide/h;-><init>()V

    iput-object v9, v1, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/h;

    .line 10
    new-instance v10, Ly2/l;

    invoke-direct {v10}, Ly2/l;-><init>()V

    .line 11
    iget-object v12, v9, Lcom/bumptech/glide/h;->g:Lg3/b;

    .line 12
    monitor-enter v12

    .line 13
    :try_start_0
    iget-object v13, v12, Lg3/b;->a:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 14
    monitor-exit v12

    .line 15
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1b

    if-lt v10, v12, :cond_0

    .line 16
    new-instance v12, Ly2/q;

    invoke-direct {v12}, Ly2/q;-><init>()V

    .line 17
    iget-object v13, v9, Lcom/bumptech/glide/h;->g:Lg3/b;

    .line 18
    monitor-enter v13

    .line 19
    :try_start_1
    iget-object v14, v13, Lg3/b;->a:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    .line 21
    :cond_0
    :goto_0
    invoke-virtual {v9}, Lcom/bumptech/glide/h;->e()Ljava/util/List;

    move-result-object v12

    .line 22
    new-instance v13, Lc3/a;

    invoke-direct {v13, v0, v12, v2, v4}, Lc3/a;-><init>(Landroid/content/Context;Ljava/util/List;Ls2/d;Ls2/b;)V

    .line 23
    new-instance v14, Ly2/c0;

    new-instance v15, Ly2/c0$g;

    invoke-direct {v15}, Ly2/c0$g;-><init>()V

    invoke-direct {v14, v2, v15}, Ly2/c0;-><init>(Ls2/d;Ly2/c0$f;)V

    .line 24
    new-instance v15, Ly2/n;

    .line 25
    invoke-virtual {v9}, Lcom/bumptech/glide/h;->e()Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v7

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-direct {v15, v1, v7, v2, v4}, Ly2/n;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Ls2/d;Ls2/b;)V

    const/16 v1, 0x1c

    if-lt v10, v1, :cond_1

    .line 26
    const-class v7, Lcom/bumptech/glide/d$c;

    .line 27
    invoke-virtual {v11, v7}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 28
    new-instance v7, Ly2/u;

    invoke-direct {v7}, Ly2/u;-><init>()V

    .line 29
    new-instance v17, Ly2/h;

    invoke-direct/range {v17 .. v17}, Ly2/h;-><init>()V

    move-object/from16 v26, v5

    move v5, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v26

    goto :goto_1

    .line 30
    :cond_1
    new-instance v7, Ly2/g;

    invoke-direct {v7, v15}, Ly2/g;-><init>(Ly2/n;)V

    .line 31
    new-instance v1, Ly2/z;

    invoke-direct {v1, v15, v4}, Ly2/z;-><init>(Ly2/n;Ls2/b;)V

    move-object/from16 v17, v5

    const/16 v5, 0x1c

    move-object/from16 v26, v7

    move-object v7, v1

    move-object/from16 v1, v26

    :goto_1
    if-lt v10, v5, :cond_2

    .line 32
    const-class v5, Lcom/bumptech/glide/d$b;

    .line 33
    invoke-virtual {v11, v5}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Animation"

    .line 34
    const-class v11, Ljava/io/InputStream;

    move/from16 p3, v10

    const-class v10, Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v6

    .line 35
    new-instance v6, La3/a$c;

    move-object/from16 v19, v3

    new-instance v3, La3/a;

    invoke-direct {v3, v12, v4}, La3/a;-><init>(Ljava/util/List;Ls2/b;)V

    invoke-direct {v6, v3}, La3/a$c;-><init>(La3/a;)V

    .line 36
    invoke-virtual {v9, v5, v11, v10, v6}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    const-string v3, "Animation"

    .line 37
    const-class v5, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/drawable/Drawable;

    .line 38
    new-instance v10, La3/a$b;

    new-instance v11, La3/a;

    invoke-direct {v11, v12, v4}, La3/a;-><init>(Ljava/util/List;Ls2/b;)V

    invoke-direct {v10, v11}, La3/a$b;-><init>(La3/a;)V

    .line 39
    invoke-virtual {v9, v3, v5, v6, v10}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    goto :goto_2

    :cond_2
    move-object/from16 v19, v3

    move-object/from16 v18, v6

    move/from16 p3, v10

    .line 40
    :goto_2
    new-instance v3, La3/e;

    invoke-direct {v3, v0}, La3/e;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v5, Lv2/s$c;

    invoke-direct {v5, v8}, Lv2/s$c;-><init>(Landroid/content/res/Resources;)V

    .line 42
    new-instance v6, Lv2/s$d;

    invoke-direct {v6, v8}, Lv2/s$d;-><init>(Landroid/content/res/Resources;)V

    .line 43
    new-instance v10, Lv2/s$b;

    invoke-direct {v10, v8}, Lv2/s$b;-><init>(Landroid/content/res/Resources;)V

    .line 44
    new-instance v11, Lv2/s$a;

    invoke-direct {v11, v8}, Lv2/s$a;-><init>(Landroid/content/res/Resources;)V

    .line 45
    new-instance v0, Ly2/c;

    invoke-direct {v0, v4}, Ly2/c;-><init>(Ls2/b;)V

    move-object/from16 p6, v11

    .line 46
    new-instance v11, Ld3/a;

    invoke-direct {v11}, Ld3/a;-><init>()V

    move-object/from16 p7, v11

    .line 47
    new-instance v11, Landroidx/lifecycle/m0;

    invoke-direct {v11}, Landroidx/lifecycle/m0;-><init>()V

    move-object/from16 v20, v11

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    move-object/from16 v21, v11

    .line 49
    const-class v11, Ljava/nio/ByteBuffer;

    move-object/from16 v22, v6

    new-instance v6, Landroidx/emoji2/text/b;

    invoke-direct {v6}, Landroidx/emoji2/text/b;-><init>()V

    move-object/from16 v23, v10

    .line 50
    iget-object v10, v9, Lcom/bumptech/glide/h;->b:Lg3/a;

    .line 51
    monitor-enter v10

    move-object/from16 v24, v5

    .line 52
    :try_start_2
    iget-object v5, v10, Lg3/a;->a:Ljava/util/ArrayList;

    move-object/from16 v25, v3

    new-instance v3, Lg3/a$a;

    invoke-direct {v3, v11, v6}, Lg3/a$a;-><init>(Ljava/lang/Class;Lp2/d;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 53
    monitor-exit v10

    .line 54
    const-class v3, Ljava/io/InputStream;

    new-instance v5, Lg1/k;

    invoke-direct {v5, v4}, Lg1/k;-><init>(Ls2/b;)V

    .line 55
    iget-object v6, v9, Lcom/bumptech/glide/h;->b:Lg3/a;

    .line 56
    monitor-enter v6

    .line 57
    :try_start_3
    iget-object v10, v6, Lg3/a;->a:Ljava/util/ArrayList;

    new-instance v11, Lg3/a$a;

    invoke-direct {v11, v3, v5}, Lg3/a$a;-><init>(Ljava/lang/Class;Lp2/d;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    monitor-exit v6

    const-string v3, "Bitmap"

    .line 59
    const-class v5, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {v9, v3, v5, v6, v1}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    const-string v3, "Bitmap"

    const-class v5, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {v9, v3, v5, v6, v7}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    const-string v3, "Bitmap"

    .line 62
    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v10, Ly2/w;

    invoke-direct {v10, v15}, Ly2/w;-><init>(Ly2/n;)V

    invoke-virtual {v9, v3, v5, v6, v10}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    const-string v3, "Bitmap"

    .line 63
    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    .line 64
    invoke-virtual {v9, v3, v5, v6, v14}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    const-string v3, "Bitmap"

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    .line 65
    new-instance v10, Ly2/c0;

    new-instance v11, Ly2/c0$c;

    invoke-direct {v11}, Ly2/c0$c;-><init>()V

    invoke-direct {v10, v2, v11}, Ly2/c0;-><init>(Ls2/d;Ly2/c0$f;)V

    .line 66
    invoke-virtual {v9, v3, v5, v6, v10}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    const-class v3, Landroid/graphics/Bitmap;

    const-class v5, Landroid/graphics/Bitmap;

    .line 67
    sget-object v6, Lv2/u$a;->a:Lv2/u$a;

    invoke-virtual {v9, v3, v5, v6}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-string v3, "Bitmap"

    const-class v5, Landroid/graphics/Bitmap;

    const-class v10, Landroid/graphics/Bitmap;

    new-instance v11, Ly2/b0;

    invoke-direct {v11}, Ly2/b0;-><init>()V

    .line 68
    invoke-virtual {v9, v3, v5, v10, v11}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    const-class v3, Landroid/graphics/Bitmap;

    .line 69
    invoke-virtual {v9, v3, v0}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Lp2/k;)Lcom/bumptech/glide/h;

    const-string v3, "BitmapDrawable"

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v10, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v11, Ly2/a;

    invoke-direct {v11, v8, v1}, Ly2/a;-><init>(Landroid/content/res/Resources;Lp2/j;)V

    .line 70
    invoke-virtual {v9, v3, v5, v10, v11}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    const-string v1, "BitmapDrawable"

    const-class v3, Ljava/io/InputStream;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v10, Ly2/a;

    invoke-direct {v10, v8, v7}, Ly2/a;-><init>(Landroid/content/res/Resources;Lp2/j;)V

    .line 71
    invoke-virtual {v9, v1, v3, v5, v10}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    const-string v1, "BitmapDrawable"

    const-class v3, Landroid/os/ParcelFileDescriptor;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Ly2/a;

    invoke-direct {v7, v8, v14}, Ly2/a;-><init>(Landroid/content/res/Resources;Lp2/j;)V

    .line 72
    invoke-virtual {v9, v1, v3, v5, v7}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v3, Ly2/b;

    invoke-direct {v3, v2, v0}, Ly2/b;-><init>(Ls2/d;Lp2/k;)V

    .line 73
    invoke-virtual {v9, v1, v3}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Lp2/k;)Lcom/bumptech/glide/h;

    const-string v0, "Animation"

    const-class v1, Ljava/io/InputStream;

    const-class v3, Lc3/c;

    new-instance v5, Lc3/j;

    invoke-direct {v5, v12, v13, v4}, Lc3/j;-><init>(Ljava/util/List;Lp2/j;Ls2/b;)V

    .line 74
    invoke-virtual {v9, v0, v1, v3, v5}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    const-string v0, "Animation"

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v3, Lc3/c;

    .line 75
    invoke-virtual {v9, v0, v1, v3, v13}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    const-class v0, Lc3/c;

    new-instance v1, Lc3/d;

    invoke-direct {v1}, Lc3/d;-><init>()V

    .line 76
    invoke-virtual {v9, v0, v1}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Lp2/k;)Lcom/bumptech/glide/h;

    move-object/from16 v0, v19

    .line 77
    invoke-virtual {v9, v0, v0, v6}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-string v1, "Bitmap"

    const-class v3, Landroid/graphics/Bitmap;

    new-instance v5, Lc3/h;

    invoke-direct {v5, v2}, Lc3/h;-><init>(Ls2/d;)V

    .line 78
    invoke-virtual {v9, v1, v0, v3, v5}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/graphics/drawable/Drawable;

    const-string v3, "legacy_append"

    move-object/from16 v5, v25

    .line 79
    invoke-virtual {v9, v3, v0, v1, v5}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    .line 80
    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/graphics/Bitmap;

    new-instance v3, Ly2/y;

    invoke-direct {v3, v5, v2}, Ly2/y;-><init>(La3/e;Ls2/d;)V

    const-string v5, "legacy_append"

    .line 81
    invoke-virtual {v9, v5, v0, v1, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    .line 82
    new-instance v0, Lz2/a$a;

    invoke-direct {v0}, Lz2/a$a;-><init>()V

    .line 83
    invoke-virtual {v9, v0}, Lcom/bumptech/glide/h;->h(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/h;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/nio/ByteBuffer;

    new-instance v3, Lv2/c$b;

    invoke-direct {v3}, Lv2/c$b;-><init>()V

    .line 84
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lv2/e$e;

    invoke-direct {v3}, Lv2/e$e;-><init>()V

    .line 85
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/File;

    new-instance v3, Lb3/a;

    invoke-direct {v3}, Lb3/a;-><init>()V

    const-string v5, "legacy_append"

    .line 86
    invoke-virtual {v9, v5, v0, v1, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    .line 87
    const-class v0, Ljava/io/File;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lv2/e$b;

    invoke-direct {v3}, Lv2/e$b;-><init>()V

    .line 88
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/File;

    .line 89
    invoke-virtual {v9, v0, v1, v6}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    new-instance v0, Lcom/bumptech/glide/load/data/k$a;

    invoke-direct {v0, v4}, Lcom/bumptech/glide/load/data/k$a;-><init>(Ls2/b;)V

    .line 90
    invoke-virtual {v9, v0}, Lcom/bumptech/glide/h;->h(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/h;

    .line 91
    new-instance v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$a;-><init>()V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/h;->h(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/h;

    .line 92
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    move-object/from16 v3, v24

    .line 93
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v5, v23

    .line 94
    invoke-virtual {v9, v0, v1, v5}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v1, Ljava/io/InputStream;

    move-object/from16 v7, v18

    .line 95
    invoke-virtual {v9, v7, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    .line 96
    invoke-virtual {v9, v7, v1, v5}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v1, Landroid/net/Uri;

    move-object/from16 v3, v22

    .line 97
    invoke-virtual {v9, v7, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v1, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v5, p6

    .line 98
    invoke-virtual {v9, v0, v1, v5}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v1, Landroid/content/res/AssetFileDescriptor;

    .line 99
    invoke-virtual {v9, v7, v1, v5}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v1, Landroid/net/Uri;

    .line 100
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lv2/d$c;

    invoke-direct {v1}, Lv2/d$c;-><init>()V

    move-object/from16 v3, v17

    .line 101
    invoke-virtual {v9, v3, v0, v1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v5, Lv2/d$c;

    invoke-direct {v5}, Lv2/d$c;-><init>()V

    .line 102
    invoke-virtual {v9, v0, v1, v5}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lv2/t$c;

    invoke-direct {v1}, Lv2/t$c;-><init>()V

    .line 103
    invoke-virtual {v9, v3, v0, v1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    new-instance v1, Lv2/t$b;

    invoke-direct {v1}, Lv2/t$b;-><init>()V

    .line 104
    invoke-virtual {v9, v3, v0, v1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/content/res/AssetFileDescriptor;

    new-instance v1, Lv2/t$a;

    invoke-direct {v1}, Lv2/t$a;-><init>()V

    .line 105
    invoke-virtual {v9, v3, v0, v1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lv2/a$c;

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v3, v5}, Lv2/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/content/res/AssetFileDescriptor;

    new-instance v3, Lv2/a$b;

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v3, v5}, Lv2/a$b;-><init>(Landroid/content/res/AssetManager;)V

    .line 108
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lw2/b$a;

    move-object/from16 v5, p1

    invoke-direct {v3, v5}, Lw2/b$a;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lw2/c$a;

    invoke-direct {v3, v5}, Lw2/c$a;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const/16 v0, 0x1d

    move/from16 v1, p3

    if-lt v1, v0, :cond_3

    .line 111
    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lw2/d$c;

    invoke-direct {v3, v5}, Lw2/d$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    .line 112
    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lw2/d$b;

    invoke-direct {v3, v5}, Lw2/d$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    .line 113
    :cond_3
    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lv2/v$d;

    move-object/from16 v7, v21

    invoke-direct {v3, v7}, Lv2/v$d;-><init>(Landroid/content/ContentResolver;)V

    .line 114
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lv2/v$b;

    invoke-direct {v3, v7}, Lv2/v$b;-><init>(Landroid/content/ContentResolver;)V

    .line 115
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/content/res/AssetFileDescriptor;

    new-instance v3, Lv2/v$a;

    invoke-direct {v3, v7}, Lv2/v$a;-><init>(Landroid/content/ContentResolver;)V

    .line 116
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lv2/w$a;

    invoke-direct {v3}, Lv2/w$a;-><init>()V

    .line 117
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Ljava/net/URL;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lw2/e$a;

    invoke-direct {v3}, Lw2/e$a;-><init>()V

    .line 118
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/File;

    new-instance v3, Lv2/j$a;

    invoke-direct {v3, v5}, Lv2/j$a;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Lv2/f;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lw2/a$a;

    invoke-direct {v3}, Lw2/a$a;-><init>()V

    .line 120
    invoke-virtual {v9, v0, v1, v3}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Ljava/nio/ByteBuffer;

    new-instance v1, Lv2/b$a;

    invoke-direct {v1}, Lv2/b$a;-><init>()V

    move-object/from16 v3, v16

    .line 121
    invoke-virtual {v9, v3, v0, v1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lv2/b$d;

    invoke-direct {v1}, Lv2/b$d;-><init>()V

    .line 122
    invoke-virtual {v9, v3, v0, v1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/net/Uri;

    .line 123
    invoke-virtual {v9, v0, v1, v6}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 124
    invoke-virtual {v9, v0, v1, v6}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v1, Landroid/graphics/drawable/Drawable;

    new-instance v6, La3/f;

    invoke-direct {v6}, La3/f;-><init>()V

    const-string v7, "legacy_append"

    .line 125
    invoke-virtual {v9, v7, v0, v1, v6}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    .line 126
    const-class v0, Landroid/graphics/Bitmap;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lf/p;

    invoke-direct {v6, v8}, Lf/p;-><init>(Landroid/content/res/Resources;)V

    .line 127
    invoke-virtual {v9, v0, v1, v6}, Lcom/bumptech/glide/h;->i(Ljava/lang/Class;Ljava/lang/Class;Ld3/c;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/graphics/Bitmap;

    move-object/from16 v1, p7

    .line 128
    invoke-virtual {v9, v0, v3, v1}, Lcom/bumptech/glide/h;->i(Ljava/lang/Class;Ljava/lang/Class;Ld3/c;)Lcom/bumptech/glide/h;

    const-class v0, Landroid/graphics/drawable/Drawable;

    new-instance v6, Ld3/b;

    move-object/from16 v7, v20

    invoke-direct {v6, v2, v1, v7}, Ld3/b;-><init>(Ls2/d;Ld3/c;Ld3/c;)V

    .line 129
    invoke-virtual {v9, v0, v3, v6}, Lcom/bumptech/glide/h;->i(Ljava/lang/Class;Ljava/lang/Class;Ld3/c;)Lcom/bumptech/glide/h;

    const-class v0, Lc3/c;

    .line 130
    invoke-virtual {v9, v0, v3, v7}, Lcom/bumptech/glide/h;->i(Ljava/lang/Class;Ljava/lang/Class;Ld3/c;)Lcom/bumptech/glide/h;

    .line 131
    new-instance v0, Ly2/c0;

    new-instance v1, Ly2/c0$d;

    invoke-direct {v1}, Ly2/c0$d;-><init>()V

    invoke-direct {v0, v2, v1}, Ly2/c0;-><init>(Ls2/d;Ly2/c0$f;)V

    .line 132
    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v1, v2, v0}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    .line 133
    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v3, Ly2/a;

    invoke-direct {v3, v8, v0}, Ly2/a;-><init>(Landroid/content/res/Resources;Lp2/j;)V

    invoke-virtual {v9, v1, v2, v3}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lp2/j;)Lcom/bumptech/glide/h;

    .line 134
    new-instance v6, Landroidx/lifecycle/o;

    invoke-direct {v6}, Landroidx/lifecycle/o;-><init>()V

    .line 135
    new-instance v0, Lcom/bumptech/glide/e;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object v5, v9

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p2

    move-object/from16 v11, p12

    move/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Ls2/b;Lcom/bumptech/glide/h;Landroidx/lifecycle/o;Lcom/bumptech/glide/c$a;Ljava/util/Map;Ljava/util/List;Lr2/m;Lcom/bumptech/glide/f;I)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/e;

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    .line 136
    monitor-exit v6

    throw v0

    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    .line 137
    monitor-exit v10

    throw v0

    :catchall_3
    move-exception v0

    .line 138
    monitor-exit v12

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 25

    move-object/from16 v0, p1

    .line 1
    sget-boolean v1, Lcom/bumptech/glide/c;->q:Z

    if-nez v1, :cond_21

    const/4 v1, 0x1

    .line 2
    sput-boolean v1, Lcom/bumptech/glide/c;->q:Z

    .line 3
    new-instance v2, Lcom/bumptech/glide/d;

    invoke-direct {v2}, Lcom/bumptech/glide/d;-><init>()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual/range {p1 .. p1}, Lf3/a;->isManifestParsingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v3

    goto/16 :goto_3

    :cond_1
    :goto_0
    const-string v3, "ManifestParser"

    .line 7
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Loading Glide modules"

    .line 8
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 11
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 12
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v8, :cond_3

    .line 13
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "Got null app info metadata"

    .line 14
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 15
    :cond_3
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got app info metadata: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_4
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "GlideModule"

    .line 18
    iget-object v11, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v11, v9}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 19
    invoke-static {v9}, Lf3/e;->a(Ljava/lang/String;)Lf3/c;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 21
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loaded Glide module: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 22
    :cond_6
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "Finished loading Glide modules"

    .line 23
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    move-object/from16 v16, v6

    :goto_3
    const-string v3, "Glide"

    if-eqz v0, :cond_a

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v6

    .line 26
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 27
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 28
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf3/c;

    .line 29
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_4

    .line 30
    :cond_8
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 31
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 33
    :cond_a
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 34
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf3/c;

    const-string v7, "Discovered GlideModule from manifest: "

    .line 35
    invoke-static {v7}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 36
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    if-eqz v0, :cond_c

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getRequestManagerFactory()Le3/l$b;

    move-result-object v3

    .line 38
    :cond_c
    iput-object v3, v2, Lcom/bumptech/glide/d;->n:Le3/l$b;

    .line 39
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf3/c;

    .line 40
    invoke-interface {v4, v15, v2}, Lf3/b;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    goto :goto_6

    :cond_d
    if-eqz v0, :cond_e

    .line 41
    invoke-virtual {v0, v15, v2}, Lf3/a;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    .line 42
    :cond_e
    iget-object v3, v2, Lcom/bumptech/glide/d;->g:Lu2/a;

    const/4 v14, 0x0

    if-nez v3, :cond_10

    .line 43
    new-instance v3, Lu2/a$a;

    invoke-direct {v3}, Lu2/a$a;-><init>()V

    .line 44
    invoke-static {}, Lu2/a;->a()I

    move-result v8

    const-string v4, "source"

    .line 45
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 46
    new-instance v13, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v9, 0x0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v7, Lu2/a$b;

    invoke-direct {v7, v3, v4, v14}, Lu2/a$b;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Z)V

    move-object v6, v13

    move-object v3, v7

    move v7, v8

    move-object v4, v13

    move-object v13, v3

    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 47
    new-instance v3, Lu2/a;

    invoke-direct {v3, v4}, Lu2/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 48
    iput-object v3, v2, Lcom/bumptech/glide/d;->g:Lu2/a;

    goto :goto_7

    .line 49
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_10
    :goto_7
    iget-object v3, v2, Lcom/bumptech/glide/d;->h:Lu2/a;

    if-nez v3, :cond_12

    .line 51
    sget v3, Lu2/a;->j:I

    .line 52
    new-instance v3, Lu2/a$a;

    invoke-direct {v3}, Lu2/a$a;-><init>()V

    const-string v4, "disk-cache"

    .line 53
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 54
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v20, 0x0

    sget-object v22, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v23, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v23 .. v23}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v7, Lu2/a$b;

    invoke-direct {v7, v3, v4, v1}, Lu2/a$b;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Z)V

    const/16 v19, 0x1

    move-object/from16 v17, v6

    move/from16 v18, v19

    move-object/from16 v24, v7

    invoke-direct/range {v17 .. v24}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 55
    new-instance v3, Lu2/a;

    invoke-direct {v3, v6}, Lu2/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 56
    iput-object v3, v2, Lcom/bumptech/glide/d;->h:Lu2/a;

    goto :goto_8

    .line 57
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: disk-cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_12
    :goto_8
    iget-object v3, v2, Lcom/bumptech/glide/d;->o:Lu2/a;

    if-nez v3, :cond_15

    .line 59
    invoke-static {}, Lu2/a;->a()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_13

    move v8, v5

    goto :goto_9

    :cond_13
    move v8, v1

    .line 60
    :goto_9
    new-instance v3, Lu2/a$a;

    invoke-direct {v3}, Lu2/a$a;-><init>()V

    const-string v4, "animation"

    .line 61
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 62
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v9, 0x0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v13, Lu2/a$b;

    invoke-direct {v13, v3, v4, v1}, Lu2/a$b;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Z)V

    move-object v6, v5

    move v7, v8

    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 63
    new-instance v1, Lu2/a;

    invoke-direct {v1, v5}, Lu2/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 64
    iput-object v1, v2, Lcom/bumptech/glide/d;->o:Lu2/a;

    goto :goto_a

    .line 65
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_15
    :goto_a
    iget-object v1, v2, Lcom/bumptech/glide/d;->j:Lt2/i;

    if-nez v1, :cond_16

    .line 67
    new-instance v1, Lt2/i$a;

    invoke-direct {v1, v15}, Lt2/i$a;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v3, Lt2/i;

    invoke-direct {v3, v1}, Lt2/i;-><init>(Lt2/i$a;)V

    .line 69
    iput-object v3, v2, Lcom/bumptech/glide/d;->j:Lt2/i;

    .line 70
    :cond_16
    iget-object v1, v2, Lcom/bumptech/glide/d;->k:Le3/e;

    if-nez v1, :cond_17

    .line 71
    new-instance v1, Le3/e;

    invoke-direct {v1}, Le3/e;-><init>()V

    iput-object v1, v2, Lcom/bumptech/glide/d;->k:Le3/e;

    .line 72
    :cond_17
    iget-object v1, v2, Lcom/bumptech/glide/d;->d:Ls2/d;

    if-nez v1, :cond_19

    .line 73
    iget-object v1, v2, Lcom/bumptech/glide/d;->j:Lt2/i;

    .line 74
    iget v1, v1, Lt2/i;->a:I

    if-lez v1, :cond_18

    .line 75
    new-instance v3, Ls2/j;

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Ls2/j;-><init>(J)V

    iput-object v3, v2, Lcom/bumptech/glide/d;->d:Ls2/d;

    goto :goto_b

    .line 76
    :cond_18
    new-instance v1, Ls2/e;

    invoke-direct {v1}, Ls2/e;-><init>()V

    iput-object v1, v2, Lcom/bumptech/glide/d;->d:Ls2/d;

    .line 77
    :cond_19
    :goto_b
    iget-object v1, v2, Lcom/bumptech/glide/d;->e:Ls2/i;

    if-nez v1, :cond_1a

    .line 78
    new-instance v1, Ls2/i;

    iget-object v3, v2, Lcom/bumptech/glide/d;->j:Lt2/i;

    .line 79
    iget v3, v3, Lt2/i;->d:I

    .line 80
    invoke-direct {v1, v3}, Ls2/i;-><init>(I)V

    iput-object v1, v2, Lcom/bumptech/glide/d;->e:Ls2/i;

    .line 81
    :cond_1a
    iget-object v1, v2, Lcom/bumptech/glide/d;->f:Lt2/g;

    if-nez v1, :cond_1b

    .line 82
    new-instance v1, Lt2/g;

    iget-object v3, v2, Lcom/bumptech/glide/d;->j:Lt2/i;

    .line 83
    iget v3, v3, Lt2/i;->b:I

    int-to-long v3, v3

    .line 84
    invoke-direct {v1, v3, v4}, Lt2/g;-><init>(J)V

    iput-object v1, v2, Lcom/bumptech/glide/d;->f:Lt2/g;

    .line 85
    :cond_1b
    iget-object v1, v2, Lcom/bumptech/glide/d;->i:Lt2/a$a;

    if-nez v1, :cond_1c

    .line 86
    new-instance v1, Lt2/f;

    invoke-direct {v1, v15}, Lt2/f;-><init>(Landroid/content/Context;)V

    iput-object v1, v2, Lcom/bumptech/glide/d;->i:Lt2/a$a;

    .line 87
    :cond_1c
    iget-object v1, v2, Lcom/bumptech/glide/d;->c:Lr2/m;

    if-nez v1, :cond_1d

    .line 88
    new-instance v1, Lr2/m;

    iget-object v4, v2, Lcom/bumptech/glide/d;->f:Lt2/g;

    iget-object v5, v2, Lcom/bumptech/glide/d;->i:Lt2/a$a;

    iget-object v6, v2, Lcom/bumptech/glide/d;->h:Lu2/a;

    iget-object v7, v2, Lcom/bumptech/glide/d;->g:Lu2/a;

    .line 89
    new-instance v8, Lu2/a;

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v20, Lu2/a;->i:J

    sget-object v22, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v23, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v23 .. v23}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Lu2/a$b;

    new-instance v10, Lu2/a$a;

    invoke-direct {v10}, Lu2/a$a;-><init>()V

    const-string v11, "source-unlimited"

    invoke-direct {v9, v10, v11, v14}, Lu2/a$b;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Z)V

    const/16 v18, 0x0

    const v19, 0x7fffffff

    move-object/from16 v17, v3

    move-object/from16 v24, v9

    invoke-direct/range {v17 .. v24}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v8, v3}, Lu2/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 90
    iget-object v9, v2, Lcom/bumptech/glide/d;->o:Lu2/a;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lr2/m;-><init>(Lt2/h;Lt2/a$a;Lu2/a;Lu2/a;Lu2/a;Lu2/a;)V

    iput-object v1, v2, Lcom/bumptech/glide/d;->c:Lr2/m;

    .line 91
    :cond_1d
    iget-object v1, v2, Lcom/bumptech/glide/d;->p:Ljava/util/List;

    if-nez v1, :cond_1e

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lcom/bumptech/glide/d;->p:Ljava/util/List;

    goto :goto_c

    .line 93
    :cond_1e
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lcom/bumptech/glide/d;->p:Ljava/util/List;

    .line 94
    :goto_c
    iget-object v1, v2, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v13, Lcom/bumptech/glide/f;

    invoke-direct {v13, v1}, Lcom/bumptech/glide/f;-><init>(Lcom/bumptech/glide/f$a;)V

    .line 96
    new-instance v9, Le3/l;

    iget-object v1, v2, Lcom/bumptech/glide/d;->n:Le3/l$b;

    invoke-direct {v9, v1, v13}, Le3/l;-><init>(Le3/l$b;Lcom/bumptech/glide/f;)V

    .line 97
    new-instance v1, Lcom/bumptech/glide/c;

    iget-object v5, v2, Lcom/bumptech/glide/d;->c:Lr2/m;

    iget-object v6, v2, Lcom/bumptech/glide/d;->f:Lt2/g;

    iget-object v7, v2, Lcom/bumptech/glide/d;->d:Ls2/d;

    iget-object v8, v2, Lcom/bumptech/glide/d;->e:Ls2/i;

    iget-object v10, v2, Lcom/bumptech/glide/d;->k:Le3/e;

    iget v11, v2, Lcom/bumptech/glide/d;->l:I

    iget-object v12, v2, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/d$a;

    iget-object v4, v2, Lcom/bumptech/glide/d;->a:Lp/a;

    iget-object v2, v2, Lcom/bumptech/glide/d;->p:Ljava/util/List;

    move-object v3, v1

    move-object/from16 v17, v4

    move-object v4, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v17

    move/from16 v17, v14

    move-object v14, v2

    move-object v2, v15

    move-object/from16 v15, v18

    invoke-direct/range {v3 .. v15}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Lr2/m;Lt2/h;Ls2/d;Ls2/b;Le3/l;Le3/c;ILcom/bumptech/glide/c$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/f;)V

    .line 98
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf3/c;

    .line 99
    :try_start_1
    iget-object v5, v1, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/h;

    invoke-interface {v4, v2, v1, v5}, Lf3/f;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/h;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    .line 101
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1f
    if-eqz v0, :cond_20

    .line 103
    iget-object v3, v1, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/h;

    invoke-virtual {v0, v2, v1, v3}, Lf3/d;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/h;)V

    .line 104
    :cond_20
    invoke-virtual {v2, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 105
    sput-object v1, Lcom/bumptech/glide/c;->p:Lcom/bumptech/glide/c;

    .line 106
    sput-boolean v17, Lcom/bumptech/glide/c;->q:Z

    return-void

    :catch_1
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find metadata to parse GlideModules"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 108
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 7

    .line 1
    sget-object v0, Lcom/bumptech/glide/c;->p:Lcom/bumptech/glide/c;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    const-class v2, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/bumptech/glide/c;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/bumptech/glide/c;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/bumptech/glide/c;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/bumptech/glide/c;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_4
    const/4 v0, 0x5

    const-string v2, "Glide"

    .line 10
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 11
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    :goto_0
    const-class v0, Lcom/bumptech/glide/c;

    monitor-enter v0

    .line 13
    :try_start_1
    sget-object v2, Lcom/bumptech/glide/c;->p:Lcom/bumptech/glide/c;

    if-nez v2, :cond_1

    .line 14
    invoke-static {p0, v1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    .line 15
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 16
    :cond_2
    :goto_1
    sget-object p0, Lcom/bumptech/glide/c;->p:Lcom/bumptech/glide/c;

    return-object p0
.end method

.method public static c(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static e(Landroid/content/Context;)Lcom/bumptech/glide/j;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/c;->m:Le3/l;

    .line 4
    invoke-virtual {v0, p0}, Le3/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Lcom/bumptech/glide/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->o:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/c;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unregister not yet registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    .line 1
    invoke-static {}, Ll3/l;->a()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Lt2/h;

    check-cast v0, Ll3/i;

    const-wide/16 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Ll3/i;->e(J)V

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/c;->h:Ls2/d;

    invoke-interface {v0}, Ls2/d;->b()V

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/c;->l:Ls2/b;

    invoke-interface {v0}, Ls2/b;->b()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 5

    .line 1
    invoke-static {}, Ll3/l;->a()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/c;->o:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/j;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Lt2/h;

    check-cast v0, Lt2/g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x28

    if-lt p1, v1, :cond_1

    const-wide/16 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Ll3/i;->e(J)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x14

    if-ge p1, v1, :cond_2

    const/16 v1, 0xf

    if-ne p1, v1, :cond_3

    .line 8
    :cond_2
    monitor-enter v0

    .line 9
    :try_start_1
    iget-wide v1, v0, Ll3/i;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const-wide/16 v3, 0x2

    .line 10
    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ll3/i;->e(J)V

    .line 11
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/c;->h:Ls2/d;

    invoke-interface {v0, p1}, Ls2/d;->a(I)V

    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/c;->l:Ls2/b;

    invoke-interface {v0, p1}, Ls2/b;->a(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
