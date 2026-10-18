.class public final Ls3/f;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Ls3/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/f$a;
    }
.end annotation


# static fields
.field public static final b:[I

.field public static final c:Ls3/f$a;

.field public static final d:Ls3/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Ls3/f;->b:[I

    .line 2
    new-instance v0, Ls3/f$a;

    sget-object v1, Ln3/z0;->e:Ln3/z0;

    invoke-direct {v0, v1}, Ls3/f$a;-><init>(Ls3/f$a$a;)V

    sput-object v0, Ls3/f;->c:Ls3/f$a;

    .line 3
    new-instance v0, Ls3/f$a;

    sget-object v1, Ln3/n;->h:Ln3/n;

    invoke-direct {v0, v1}, Ls3/f$a;-><init>(Ls3/f$a$a;)V

    sput-object v0, Ls3/f;->d:Ls3/f$a;

    return-void

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ls3/h;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1
    :pswitch_1
    new-instance p1, Lu3/b;

    invoke-direct {p1}, Lu3/b;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2
    :pswitch_2
    sget-object p1, Ls3/f;->d:Ls3/f$a;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ls3/f$a;->a([Ljava/lang/Object;)Ls3/h;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4
    :pswitch_3
    new-instance p1, Lx3/a;

    invoke-direct {p1}, Lx3/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 5
    :pswitch_4
    new-instance p1, Ld4/a;

    invoke-direct {p1}, Ld4/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6
    :pswitch_5
    new-instance p1, Lc4/c0;

    .line 7
    new-instance v1, Lm5/d0;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lm5/d0;-><init>(J)V

    new-instance v2, Lc4/g;

    invoke-direct {v2}, Lc4/g;-><init>()V

    invoke-direct {p1, v0, v1, v2}, Lc4/c0;-><init>(ILm5/d0;Lc4/d0$c;)V

    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 9
    :pswitch_6
    new-instance p1, Lc4/w;

    invoke-direct {p1}, Lc4/w;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 10
    :pswitch_7
    new-instance p1, Lb4/c;

    invoke-direct {p1}, Lb4/c;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 11
    :pswitch_8
    new-instance p1, La4/e;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v2, v0}, La4/e;-><init>(ILm5/d0;La4/l;Ljava/util/List;)V

    .line 13
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p1, La4/h;

    invoke-direct {p1, v1}, La4/h;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :pswitch_9
    new-instance p1, Lz3/d;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    invoke-direct {p1, v0, v1}, Lz3/d;-><init>(J)V

    .line 17
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :pswitch_a
    new-instance p1, Ly3/d;

    invoke-direct {p1, v1}, Ly3/d;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :pswitch_b
    new-instance p1, Lw3/b;

    invoke-direct {p1}, Lw3/b;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :pswitch_c
    sget-object p1, Ls3/f;->c:Ls3/f$a;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ls3/f$a;->a([Ljava/lang/Object;)Ls3/h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Lv3/b;

    invoke-direct {p1}, Lv3/b;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :pswitch_d
    new-instance p1, Lt3/a;

    .line 24
    invoke-direct {p1, v1}, Lt3/a;-><init>(I)V

    .line 25
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :pswitch_e
    new-instance p1, Lc4/e;

    .line 27
    invoke-direct {p1, v1}, Lc4/e;-><init>(I)V

    .line 28
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :pswitch_f
    new-instance p1, Lc4/c;

    invoke-direct {p1}, Lc4/c;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :pswitch_10
    new-instance p1, Lc4/a;

    invoke-direct {p1}, Lc4/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized c()[Ls3/h;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Ls3/f;->e(Landroid/net/Uri;Ljava/util/Map;)[Ls3/h;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Landroid/net/Uri;Ljava/util/Map;)[Ls3/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ls3/h;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Ls3/f;->b:[I

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-static {p2}, Lm5/h0;->c(Ljava/util/Map;)I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 3
    invoke-virtual {p0, p2, v0}, Ls3/f;->a(ILjava/util/List;)V

    .line 4
    :cond_0
    invoke-static {p1}, Lm5/h0;->d(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v3, :cond_1

    if-eq p1, p2, :cond_1

    .line 5
    invoke-virtual {p0, p1, v0}, Ls3/f;->a(ILjava/util/List;)V

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 6
    aget v4, v1, v3

    if-eq v4, p2, :cond_2

    if-eq v4, p1, :cond_2

    .line 7
    invoke-virtual {p0, v4, v0}, Ls3/f;->a(ILjava/util/List;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ls3/h;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ls3/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
