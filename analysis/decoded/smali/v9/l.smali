.class public final Lv9/l;
.super Ljava/lang/Object;
.source "AdaptKitDeviceRequester.kt"


# instance fields
.field public a:Lea/m;

.field public final b:Lv9/a;

.field public final c:Lv9/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lea/m;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lfd/d;

.field public e:Lv9/i;

.field public f:Lv9/s;

.field public g:Lv9/q;

.field public h:Lv9/t0;

.field public i:Lv9/o;


# direct methods
.method public constructor <init>(Lea/m;)V
    .locals 1

    .line 7
    sget-object v0, Lv9/a;->i:Lv9/a$a;

    .line 8
    sget-object v0, Lv9/a;->j:Lv9/a;

    .line 9
    invoke-direct {p0, p1, v0}, Lv9/l;-><init>(Lea/m;Lv9/a;)V

    return-void
.end method

.method public constructor <init>(Lea/m;Lv9/a;)V
    .locals 1

    const-string v0, "adaptKitPairedDevices"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv9/l;->a:Lea/m;

    .line 3
    iput-object p2, p0, Lv9/l;->b:Lv9/a;

    .line 4
    new-instance p1, Lv9/l$a;

    invoke-direct {p1, p0}, Lv9/l$a;-><init>(Lv9/l;)V

    iput-object p1, p0, Lv9/l;->c:Lv9/l$a;

    const/4 p1, 0x1

    .line 5
    new-instance p2, Lv9/l$b;

    invoke-direct {p2, p0}, Lv9/l$b;-><init>(Lv9/l;)V

    invoke-static {p1, p2}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lv9/l;->d:Lfd/d;

    return-void
.end method


# virtual methods
.method public final a()Lda/f;
    .locals 1

    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v0

    invoke-interface {v0}, Lw9/d;->A()Lda/f;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lw9/u1;)Lfb/c;
    .locals 3

    const-string v0, "shoe"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v0

    new-instance v1, Lw9/a;

    iget-object v2, p0, Lv9/l;->b:Lv9/a;

    invoke-direct {v1, v2, p1}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    invoke-interface {v0, v1}, Lw9/d;->i(Lw9/a;)Lfb/c;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lw9/d;
    .locals 1

    iget-object v0, p0, Lv9/l;->d:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw9/d;

    return-object v0
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lv9/l;->j(Lv9/e0;)V

    .line 2
    invoke-virtual {p0, v0}, Lv9/l;->f(Lv9/i;)V

    .line 3
    invoke-virtual {p0, v0}, Lv9/l;->h(Lv9/q;)V

    .line 4
    invoke-virtual {p0, v0}, Lv9/l;->i(Lv9/s;)V

    .line 5
    iget-object v1, p0, Lv9/l;->h:Lv9/t0;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v2

    invoke-interface {v2, v1}, Lw9/d;->F(Lv9/t0;)V

    .line 7
    :cond_0
    iput-object v0, p0, Lv9/l;->h:Lv9/t0;

    .line 8
    invoke-virtual {p0, v0}, Lv9/l;->g(Lv9/o;)V

    return-void
.end method

.method public final e(Lw9/u1;Lv9/k;)V
    .locals 12

    const-string v0, "shoe"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitDeviceRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v1

    .line 2
    new-instance v2, Lw9/a;

    iget-object v0, p0, Lv9/l;->b:Lv9/a;

    invoke-direct {v2, v0, p1}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 3
    sget-object v0, Lv9/t;->a:Lv9/t;

    .line 4
    sget-object v0, Lv9/t;->i:Leb/f;

    const/4 v3, 0x1

    new-array v3, v3, [Leb/g;

    .line 5
    new-instance v4, Leb/c;

    new-instance v5, Leb/a;

    .line 6
    invoke-virtual {p2}, Lv9/k;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DeviceRequest[request: "

    const-string v8, "]"

    .line 7
    invoke-static {v7, v6, v8}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    iget-object v7, v2, Lw9/a;->i:Lw9/u1;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v9, Lw9/u1;->j:Lw9/u1;

    if-ne v7, v9, :cond_0

    const-string v7, "Left"

    goto :goto_0

    :cond_0
    sget-object v9, Lw9/u1;->k:Lw9/u1;

    if-ne v7, v9, :cond_1

    const-string v7, "Right"

    goto :goto_0

    :cond_1
    const-string v7, "Both"

    :goto_0
    const-string v9, "Shoe[shoe: "

    .line 10
    invoke-static {v9, v7, v8}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 11
    iget-object v9, v2, Lw9/a;->h:Lv9/a;

    invoke-virtual {v9}, Lv9/a;->c()Ljava/lang/String;

    move-result-object v9

    const-string v10, "IdentifierShoe[shoe: "

    const-string v11, " identifier: "

    .line 12
    invoke-static {v10, v7, v11, v9, v8}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "AdaptKitRequester[request: "

    const-string v10, " shoe: "

    .line 13
    invoke-static {v9, v6, v10, v7, v8}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-direct {v5, v6}, Leb/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Leb/c;-><init>(Leb/d;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Leb/f;->a([Leb/g;)V

    .line 15
    instance-of v0, p2, Lv9/c2;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 16
    check-cast p2, Lv9/c2;

    .line 17
    iget-object p1, p2, Lv9/c2;->b:Lqd/l;

    if-eqz p1, :cond_2

    .line 18
    invoke-interface {v1, v2, p1}, Lw9/d;->o(Lw9/a;Lqd/l;)V

    .line 19
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_2
    if-nez v3, :cond_47

    .line 20
    sget-object p1, Lw9/i;->h:Lw9/i;

    .line 21
    invoke-interface {v1, v2, p1}, Lw9/d;->o(Lw9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 22
    :cond_3
    instance-of v0, p2, Lv9/d2;

    if-eqz v0, :cond_6

    .line 23
    invoke-static {}, Laa/a;->a()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 24
    check-cast p2, Lv9/d2;

    .line 25
    iget-object p1, p2, Lv9/d2;->b:Lqd/l;

    if-eqz p1, :cond_5

    .line 26
    invoke-static {}, Laa/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    iget-object v0, p2, Lv9/d2;->c:Lqd/l;

    .line 28
    invoke-interface {v1, v2, p1, v0}, Lw9/d;->H(Lw9/a;Lqd/l;Lqd/l;)V

    .line 29
    :cond_4
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_5
    if-nez v3, :cond_47

    .line 30
    iget-object p1, p2, Lv9/d2;->c:Lqd/l;

    .line 31
    sget-object p2, Lw9/j;->h:Lw9/j;

    .line 32
    invoke-interface {v1, v2, p2, p1}, Lw9/d;->H(Lw9/a;Lqd/l;Lqd/l;)V

    goto/16 :goto_1

    .line 33
    :cond_6
    instance-of v0, p2, Lv9/o2;

    if-eqz v0, :cond_7

    invoke-interface {v1, v2}, Lw9/d;->f(Lw9/a;)V

    goto/16 :goto_1

    .line 34
    :cond_7
    instance-of v0, p2, Lv9/z0;

    if-eqz v0, :cond_8

    .line 35
    check-cast p2, Lv9/z0;

    .line 36
    invoke-interface {v1, v2, p2}, Lw9/d;->b0(Lw9/a;Lv9/z0;)V

    goto/16 :goto_1

    .line 37
    :cond_8
    instance-of v0, p2, Lv9/x0;

    if-eqz v0, :cond_9

    .line 38
    check-cast p2, Lv9/x0;

    .line 39
    invoke-interface {v1, v2, p2}, Lw9/d;->G(Lw9/a;Lv9/x0;)V

    goto/16 :goto_1

    .line 40
    :cond_9
    instance-of v0, p2, Lv9/d1;

    if-eqz v0, :cond_a

    .line 41
    check-cast p2, Lv9/d1;

    .line 42
    invoke-interface {v1, v2, p2}, Lw9/d;->m(Lw9/a;Lv9/d1;)V

    goto/16 :goto_1

    .line 43
    :cond_a
    instance-of v0, p2, Lv9/v0;

    if-eqz v0, :cond_c

    .line 44
    move-object p1, p2

    check-cast p1, Lv9/e2;

    invoke-interface {p1}, Lv9/e2;->b()Lqd/l;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 45
    move-object p1, p2

    check-cast p1, Lv9/v0;

    .line 46
    invoke-interface {v1, v2, p1}, Lw9/d;->a(Lw9/a;Lv9/v0;)V

    .line 47
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_b
    if-nez v3, :cond_47

    .line 48
    check-cast p2, Lv9/v0;

    .line 49
    invoke-interface {v1, v2, p2}, Lw9/d;->a(Lw9/a;Lv9/v0;)V

    goto/16 :goto_1

    .line 50
    :cond_c
    instance-of v0, p2, Lv9/x1;

    if-eqz v0, :cond_e

    .line 51
    check-cast p2, Lv9/e2;

    invoke-interface {p2}, Lv9/e2;->b()Lqd/l;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 52
    new-instance v0, Lw9/a;

    .line 53
    iget-object v3, p0, Lv9/l;->b:Lv9/a;

    .line 54
    invoke-direct {v0, v3, p1}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 55
    invoke-interface {v1, v0, p2}, Lw9/d;->K(Lw9/a;Lqd/l;)V

    .line 56
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_d
    if-nez v3, :cond_47

    .line 57
    sget-object p1, Lw9/e;->h:Lw9/e;

    .line 58
    invoke-interface {v1, v2, p1}, Lw9/d;->K(Lw9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 59
    :cond_e
    instance-of v0, p2, Lv9/s3;

    if-eqz v0, :cond_10

    .line 60
    check-cast p2, Lv9/e2;

    invoke-interface {p2}, Lv9/e2;->b()Lqd/l;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 61
    invoke-interface {v1, v2, p1}, Lw9/d;->q(Lw9/a;Lqd/l;)V

    .line 62
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_f
    if-nez v3, :cond_47

    .line 63
    sget-object p1, Lw9/f;->h:Lw9/f;

    .line 64
    invoke-interface {v1, v2, p1}, Lw9/d;->q(Lw9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 65
    :cond_10
    instance-of v0, p2, Lv9/y3;

    if-eqz v0, :cond_12

    .line 66
    move-object p1, p2

    check-cast p1, Lv9/e2;

    invoke-interface {p1}, Lv9/e2;->b()Lqd/l;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 67
    move-object v0, p2

    check-cast v0, Lv9/y3;

    .line 68
    iget-object v0, v0, Lv9/y3;->b:Lea/d;

    .line 69
    invoke-interface {v1, v2, v0, p1}, Lw9/d;->E(Lw9/a;Lea/d;Lqd/l;)V

    .line 70
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_11
    if-nez v3, :cond_47

    .line 71
    check-cast p2, Lv9/y3;

    .line 72
    iget-object p1, p2, Lv9/y3;->b:Lea/d;

    .line 73
    sget-object p2, Lw9/h;->h:Lw9/h;

    .line 74
    invoke-interface {v1, v2, p1, p2}, Lw9/d;->E(Lw9/a;Lea/d;Lqd/l;)V

    goto/16 :goto_1

    .line 75
    :cond_12
    instance-of v0, p2, Lv9/v3;

    if-eqz v0, :cond_14

    .line 76
    check-cast p2, Lv9/e2;

    invoke-interface {p2}, Lv9/e2;->b()Lqd/l;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 77
    invoke-interface {v1, v2, p1}, Lw9/d;->j0(Lw9/a;Lqd/l;)V

    .line 78
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_13
    if-nez v3, :cond_47

    .line 79
    sget-object p1, Lw9/g;->h:Lw9/g;

    .line 80
    invoke-interface {v1, v2, p1}, Lw9/d;->j0(Lw9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 81
    :cond_14
    instance-of v0, p2, Lv9/j2;

    if-eqz v0, :cond_15

    .line 82
    iget-object p1, p0, Lv9/l;->b:Lv9/a;

    .line 83
    check-cast p2, Lv9/j2;

    .line 84
    iget-object p2, p2, Lv9/j2;->b:Lqd/l;

    .line 85
    invoke-interface {v1, p1, p2}, Lw9/d;->v(Lv9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 86
    :cond_15
    instance-of v0, p2, Lv9/e4;

    if-eqz v0, :cond_17

    .line 87
    check-cast p2, Lv9/e2;

    invoke-interface {p2}, Lv9/e2;->b()Lqd/l;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 88
    new-instance v0, Lw9/a;

    .line 89
    iget-object v3, p0, Lv9/l;->b:Lv9/a;

    .line 90
    invoke-direct {v0, v3, p1}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 91
    invoke-interface {v1, v0, p2}, Lw9/d;->x(Lw9/a;Lqd/l;)V

    .line 92
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_16
    if-nez v3, :cond_47

    .line 93
    sget-object p1, Lw9/p;->h:Lw9/p;

    .line 94
    invoke-interface {v1, v2, p1}, Lw9/d;->x(Lw9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 95
    :cond_17
    instance-of v0, p2, Lv9/h4;

    if-eqz v0, :cond_19

    .line 96
    check-cast p2, Lv9/e2;

    invoke-interface {p2}, Lv9/e2;->b()Lqd/l;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 97
    new-instance v0, Lw9/a;

    .line 98
    iget-object v3, p0, Lv9/l;->b:Lv9/a;

    .line 99
    invoke-direct {v0, v3, p1}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 100
    invoke-interface {v1, v0, p2}, Lw9/d;->Y(Lw9/a;Lqd/l;)V

    .line 101
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_18
    if-nez v3, :cond_47

    .line 102
    sget-object p1, Lw9/q;->h:Lw9/q;

    .line 103
    invoke-interface {v1, v2, p1}, Lw9/d;->Y(Lw9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 104
    :cond_19
    instance-of v0, p2, Lv9/p4;

    if-eqz v0, :cond_1b

    .line 105
    move-object p1, p2

    check-cast p1, Lv9/e2;

    invoke-interface {p1}, Lv9/e2;->b()Lqd/l;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 106
    move-object v0, p2

    check-cast v0, Lv9/p4;

    .line 107
    iget-object v3, v0, Lv9/p4;->b:Lea/h;

    .line 108
    iget-object v0, v0, Lv9/p4;->d:Lqd/l;

    .line 109
    invoke-interface {v1, v2, v3, p1, v0}, Lw9/d;->g(Lw9/a;Lea/h;Lqd/l;Lqd/l;)V

    .line 110
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_1a
    if-nez v3, :cond_47

    .line 111
    check-cast p2, Lv9/p4;

    .line 112
    iget-object p1, p2, Lv9/p4;->b:Lea/h;

    .line 113
    iget-object p2, p2, Lv9/p4;->d:Lqd/l;

    .line 114
    sget-object v0, Lw9/s;->h:Lw9/s;

    .line 115
    invoke-interface {v1, v2, p1, v0, p2}, Lw9/d;->g(Lw9/a;Lea/h;Lqd/l;Lqd/l;)V

    goto/16 :goto_1

    .line 116
    :cond_1b
    instance-of v0, p2, Lv9/v4;

    if-eqz v0, :cond_1d

    .line 117
    move-object p1, p2

    check-cast p1, Lv9/e2;

    invoke-interface {p1}, Lv9/e2;->b()Lqd/l;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 118
    move-object v0, p2

    check-cast v0, Lv9/v4;

    .line 119
    iget-object v3, v0, Lv9/v4;->b:Lea/h;

    .line 120
    iget-object v0, v0, Lv9/v4;->d:Lqd/l;

    .line 121
    invoke-interface {v1, v2, v3, p1, v0}, Lw9/d;->C(Lw9/a;Lea/h;Lqd/l;Lqd/l;)V

    .line 122
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_1c
    if-nez v3, :cond_47

    .line 123
    check-cast p2, Lv9/v4;

    .line 124
    iget-object v3, p2, Lv9/v4;->b:Lea/h;

    const/4 v4, 0x0

    .line 125
    iget-object v5, p2, Lv9/v4;->d:Lqd/l;

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 126
    invoke-static/range {v1 .. v7}, Lw9/d$b;->a(Lw9/d;Lw9/a;Lea/h;Lqd/l;Lqd/l;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 127
    :cond_1d
    instance-of v0, p2, Lv9/k4;

    if-eqz v0, :cond_1f

    .line 128
    check-cast p2, Lv9/e2;

    invoke-interface {p2}, Lv9/e2;->b()Lqd/l;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 129
    invoke-interface {v1, v2, p1}, Lw9/d;->d0(Lw9/a;Lqd/l;)V

    .line 130
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_1e
    if-nez v3, :cond_47

    .line 131
    sget-object p1, Lw9/r;->h:Lw9/r;

    .line 132
    invoke-interface {v1, v2, p1}, Lw9/d;->d0(Lw9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 133
    :cond_1f
    instance-of v0, p2, Lv9/s4;

    if-eqz v0, :cond_21

    .line 134
    check-cast p2, Lv9/e2;

    invoke-interface {p2}, Lv9/e2;->b()Lqd/l;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 135
    invoke-interface {v1, v2, p1}, Lw9/d;->k(Lw9/a;Lqd/l;)V

    .line 136
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_20
    if-nez v3, :cond_47

    .line 137
    sget-object p1, Lw9/t;->h:Lw9/t;

    .line 138
    invoke-interface {v1, v2, p1}, Lw9/d;->k(Lw9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 139
    :cond_21
    instance-of v0, p2, Lv9/v2;

    if-eqz v0, :cond_23

    .line 140
    move-object p1, p2

    check-cast p1, Lv9/e2;

    invoke-interface {p1}, Lv9/e2;->b()Lqd/l;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 141
    move-object v0, p2

    check-cast v0, Lv9/v2;

    .line 142
    iget-object v0, v0, Lv9/v2;->b:Lfa/j;

    .line 143
    invoke-interface {v1, v0, v2, p1}, Lw9/d;->I(Lfa/j;Lw9/a;Lqd/l;)V

    .line 144
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_22
    if-nez v3, :cond_47

    .line 145
    check-cast p2, Lv9/v2;

    .line 146
    iget-object p1, p2, Lv9/v2;->b:Lfa/j;

    .line 147
    sget-object p2, Lw9/l;->h:Lw9/l;

    .line 148
    invoke-interface {v1, p1, v2, p2}, Lw9/d;->I(Lfa/j;Lw9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 149
    :cond_23
    instance-of v0, p2, Lv9/r2;

    if-eqz v0, :cond_25

    .line 150
    check-cast p2, Lv9/e2;

    invoke-interface {p2}, Lv9/e2;->b()Lqd/l;

    move-result-object p2

    if-eqz p2, :cond_24

    .line 151
    new-instance v0, Lw9/a;

    .line 152
    iget-object v3, p0, Lv9/l;->b:Lv9/a;

    .line 153
    invoke-direct {v0, v3, p1}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 154
    invoke-interface {v1, v0, p2}, Lw9/d;->p(Lw9/a;Lqd/l;)V

    .line 155
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_24
    if-nez v3, :cond_47

    .line 156
    sget-object p1, Lw9/k;->h:Lw9/k;

    .line 157
    invoke-interface {v1, v2, p1}, Lw9/d;->p(Lw9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 158
    :cond_25
    instance-of v0, p2, Lv9/c3;

    if-eqz v0, :cond_27

    .line 159
    check-cast p2, Lv9/e2;

    invoke-interface {p2}, Lv9/e2;->b()Lqd/l;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 160
    new-instance v0, Lw9/a;

    .line 161
    iget-object v3, p0, Lv9/l;->b:Lv9/a;

    .line 162
    invoke-direct {v0, v3, p1}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 163
    invoke-interface {v1, v0, p2}, Lw9/d;->j(Lw9/a;Lqd/l;)V

    .line 164
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_26
    if-nez v3, :cond_47

    .line 165
    sget-object p1, Lw9/n;->h:Lw9/n;

    .line 166
    invoke-interface {v1, v2, p1}, Lw9/d;->j(Lw9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 167
    :cond_27
    instance-of v0, p2, Lv9/z2;

    if-eqz v0, :cond_29

    .line 168
    check-cast p2, Lv9/e2;

    invoke-interface {p2}, Lv9/e2;->b()Lqd/l;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 169
    new-instance v0, Lw9/a;

    .line 170
    iget-object v3, p0, Lv9/l;->b:Lv9/a;

    .line 171
    invoke-direct {v0, v3, p1}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 172
    invoke-interface {v1, v0, p2}, Lw9/d;->g0(Lw9/a;Lqd/l;)V

    .line 173
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_28
    if-nez v3, :cond_47

    .line 174
    sget-object p1, Lw9/m;->h:Lw9/m;

    .line 175
    invoke-interface {v1, v2, p1}, Lw9/d;->g0(Lw9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 176
    :cond_29
    instance-of v0, p2, Lv9/b5;

    if-eqz v0, :cond_2b

    .line 177
    move-object p1, p2

    check-cast p1, Lv9/e2;

    invoke-interface {p1}, Lv9/e2;->b()Lqd/l;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 178
    iget-object v0, p0, Lv9/l;->b:Lv9/a;

    .line 179
    move-object v2, p2

    check-cast v2, Lv9/b5;

    .line 180
    iget-object v3, v2, Lv9/b5;->b:Lea/e;

    .line 181
    iget-object v2, v2, Lv9/b5;->d:Lqd/l;

    .line 182
    invoke-interface {v1, v0, v3, p1, v2}, Lw9/d;->J(Lv9/a;Lea/e;Lqd/l;Lqd/l;)V

    .line 183
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_2a
    if-nez v3, :cond_47

    .line 184
    iget-object p1, p0, Lv9/l;->b:Lv9/a;

    .line 185
    check-cast p2, Lv9/b5;

    .line 186
    iget-object v0, p2, Lv9/b5;->b:Lea/e;

    .line 187
    iget-object p2, p2, Lv9/b5;->d:Lqd/l;

    .line 188
    sget-object v2, Lw9/u;->h:Lw9/u;

    .line 189
    invoke-interface {v1, p1, v0, v2, p2}, Lw9/d;->J(Lv9/a;Lea/e;Lqd/l;Lqd/l;)V

    goto/16 :goto_1

    .line 190
    :cond_2b
    instance-of v0, p2, Lv9/b4;

    if-eqz v0, :cond_2d

    .line 191
    check-cast p2, Lv9/e2;

    invoke-interface {p2}, Lv9/e2;->b()Lqd/l;

    move-result-object p2

    if-eqz p2, :cond_2c

    .line 192
    new-instance v0, Lw9/a;

    .line 193
    iget-object v3, p0, Lv9/l;->b:Lv9/a;

    .line 194
    invoke-direct {v0, v3, p1}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 195
    invoke-interface {v1, v0, p2}, Lw9/d;->b(Lw9/a;Lqd/l;)V

    .line 196
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_2c
    if-nez v3, :cond_47

    .line 197
    sget-object p1, Lw9/o;->h:Lw9/o;

    .line 198
    invoke-interface {v1, v2, p1}, Lw9/d;->b(Lw9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 199
    :cond_2d
    instance-of p1, p2, Lv9/z4;

    if-eqz p1, :cond_2e

    .line 200
    iget-object p1, p0, Lv9/l;->b:Lv9/a;

    .line 201
    check-cast p2, Lv9/z4;

    .line 202
    iget-object v0, p2, Lv9/z4;->b:Lea/e;

    .line 203
    iget-object v2, p2, Lv9/z4;->c:Lqd/l;

    .line 204
    iget-object p2, p2, Lv9/z4;->d:Lqd/l;

    .line 205
    invoke-interface {v1, p1, v0, v2, p2}, Lw9/d;->L(Lv9/a;Lea/e;Lqd/l;Lqd/l;)V

    goto/16 :goto_1

    .line 206
    :cond_2e
    instance-of p1, p2, Lv9/a5;

    if-eqz p1, :cond_2f

    .line 207
    iget-object p1, p0, Lv9/l;->b:Lv9/a;

    .line 208
    check-cast p2, Lv9/a5;

    .line 209
    iget-object v0, p2, Lv9/a5;->b:Lea/e;

    .line 210
    iget-object p2, p2, Lv9/a5;->c:Lqd/l;

    .line 211
    invoke-interface {v1, p1, v0, p2}, Lw9/d;->Q(Lv9/a;Lea/e;Lqd/l;)V

    goto/16 :goto_1

    .line 212
    :cond_2f
    instance-of p1, p2, Lv9/m5;

    if-eqz p1, :cond_31

    .line 213
    check-cast p2, Lv9/e2;

    invoke-interface {p2}, Lv9/e2;->b()Lqd/l;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 214
    invoke-interface {v1, v2, p1}, Lw9/d;->M(Lw9/a;Lqd/l;)V

    .line 215
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_30
    if-nez v3, :cond_47

    .line 216
    sget-object p1, Lw9/w;->h:Lw9/w;

    .line 217
    invoke-interface {v1, v2, p1}, Lw9/d;->M(Lw9/a;Lqd/l;)V

    goto/16 :goto_1

    .line 218
    :cond_31
    instance-of p1, p2, Lv9/x2;

    if-eqz p1, :cond_32

    .line 219
    iget-object p1, p0, Lv9/l;->b:Lv9/a;

    .line 220
    check-cast p2, Lv9/x2;

    .line 221
    iget-object v0, p2, Lv9/x2;->b:Lqd/l;

    .line 222
    iget-object p2, p2, Lv9/x2;->c:Lqd/l;

    .line 223
    invoke-interface {v1, p1, v0, p2}, Lw9/d;->s(Lv9/a;Lqd/l;Lqd/l;)V

    goto/16 :goto_1

    .line 224
    :cond_32
    instance-of p1, p2, Lv9/w2;

    if-eqz p1, :cond_33

    .line 225
    iget-object p1, v2, Lw9/a;->h:Lv9/a;

    .line 226
    invoke-interface {v1, p1}, Lw9/d;->T(Lv9/a;)V

    goto/16 :goto_1

    .line 227
    :cond_33
    instance-of p1, p2, Lv9/d5;

    if-eqz p1, :cond_35

    .line 228
    move-object p1, p2

    check-cast p1, Lv9/e2;

    invoke-interface {p1}, Lv9/e2;->b()Lqd/l;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 229
    move-object p1, p2

    check-cast p1, Lv9/d5;

    .line 230
    invoke-interface {v1, v2, p1}, Lw9/d;->y(Lw9/a;Lv9/d5;)V

    .line 231
    sget-object v3, Lfd/o;->a:Lfd/o;

    :cond_34
    if-nez v3, :cond_47

    .line 232
    check-cast p2, Lv9/d5;

    .line 233
    invoke-interface {v1, v2, p2}, Lw9/d;->y(Lw9/a;Lv9/d5;)V

    goto/16 :goto_1

    .line 234
    :cond_35
    instance-of p1, p2, Lv9/g5;

    if-eqz p1, :cond_36

    .line 235
    check-cast p2, Lv9/g5;

    invoke-interface {v1, v2, p2}, Lw9/d;->U(Lw9/a;Lv9/g5;)V

    goto/16 :goto_1

    .line 236
    :cond_36
    instance-of p1, p2, Lv9/o6;

    if-eqz p1, :cond_37

    .line 237
    check-cast p2, Lv9/o6;

    .line 238
    invoke-interface {v1, v2, p2}, Lw9/d;->c(Lw9/a;Lv9/o6;)V

    goto/16 :goto_1

    .line 239
    :cond_37
    instance-of p1, p2, Lv9/l6;

    if-eqz p1, :cond_38

    .line 240
    check-cast p2, Lv9/l6;

    .line 241
    invoke-interface {v1, v2, p2}, Lw9/d;->h0(Lw9/a;Lv9/l6;)V

    goto/16 :goto_1

    .line 242
    :cond_38
    instance-of p1, p2, Lv9/i6;

    if-eqz p1, :cond_39

    .line 243
    check-cast p2, Lv9/i6;

    .line 244
    invoke-interface {v1, v2, p2}, Lw9/d;->S(Lw9/a;Lv9/i6;)V

    goto/16 :goto_1

    .line 245
    :cond_39
    instance-of p1, p2, Lv9/s6;

    if-eqz p1, :cond_3a

    .line 246
    check-cast p2, Lv9/s6;

    .line 247
    invoke-interface {v1, v2, p2}, Lw9/d;->B(Lw9/a;Lv9/s6;)V

    goto/16 :goto_1

    .line 248
    :cond_3a
    instance-of p1, p2, Lv9/e6;

    if-eqz p1, :cond_3b

    .line 249
    check-cast p2, Lv9/e6;

    .line 250
    invoke-interface {v1, v2, p2}, Lw9/d;->R(Lw9/a;Lv9/e6;)V

    goto/16 :goto_1

    .line 251
    :cond_3b
    instance-of p1, p2, Lv9/w6;

    if-eqz p1, :cond_3c

    .line 252
    check-cast p2, Lv9/w6;

    .line 253
    invoke-interface {v1, v2, p2}, Lw9/d;->c0(Lw9/a;Lv9/w6;)V

    goto/16 :goto_1

    .line 254
    :cond_3c
    instance-of p1, p2, Lv9/w5;

    if-eqz p1, :cond_3d

    .line 255
    check-cast p2, Lv9/w5;

    .line 256
    invoke-interface {v1, v2, p2}, Lw9/d;->O(Lw9/a;Lv9/w5;)V

    goto/16 :goto_1

    .line 257
    :cond_3d
    instance-of p1, p2, Lv9/z5;

    if-eqz p1, :cond_3e

    .line 258
    check-cast p2, Lv9/z5;

    .line 259
    invoke-interface {v1, v2, p2}, Lw9/d;->D(Lw9/a;Lv9/z5;)V

    goto :goto_1

    .line 260
    :cond_3e
    instance-of p1, p2, Lv9/s5;

    if-eqz p1, :cond_3f

    .line 261
    check-cast p2, Lv9/s5;

    .line 262
    invoke-interface {v1, v2, p2}, Lw9/d;->l0(Lw9/a;Lv9/s5;)V

    goto :goto_1

    .line 263
    :cond_3f
    instance-of p1, p2, Lv9/r1;

    if-eqz p1, :cond_40

    .line 264
    check-cast p2, Lv9/r1;

    .line 265
    invoke-interface {v1, v2, p2}, Lw9/d;->l(Lw9/a;Lv9/r1;)V

    goto :goto_1

    .line 266
    :cond_40
    instance-of p1, p2, Lv9/u1;

    if-eqz p1, :cond_41

    .line 267
    check-cast p2, Lv9/u1;

    .line 268
    invoke-interface {v1, v2, p2}, Lw9/d;->a0(Lw9/a;Lv9/u1;)V

    goto :goto_1

    .line 269
    :cond_41
    instance-of p1, p2, Lv9/k1;

    if-eqz p1, :cond_42

    .line 270
    check-cast p2, Lv9/k1;

    .line 271
    invoke-interface {v1, v2, p2}, Lw9/d;->P(Lw9/a;Lv9/k1;)V

    goto :goto_1

    .line 272
    :cond_42
    instance-of p1, p2, Lv9/o1;

    if-eqz p1, :cond_43

    .line 273
    check-cast p2, Lv9/o1;

    .line 274
    invoke-interface {v1, v2, p2}, Lw9/d;->r(Lw9/a;Lv9/o1;)V

    goto :goto_1

    .line 275
    :cond_43
    instance-of p1, p2, Lv9/f3;

    if-eqz p1, :cond_44

    .line 276
    check-cast p2, Lv9/f3;

    .line 277
    invoke-interface {v1, v2, p2}, Lw9/d;->z(Lw9/a;Lv9/f3;)V

    goto :goto_1

    .line 278
    :cond_44
    instance-of p1, p2, Lv9/i3;

    if-eqz p1, :cond_45

    .line 279
    check-cast p2, Lv9/i3;

    .line 280
    invoke-interface {v1, v2, p2}, Lw9/d;->Z(Lw9/a;Lv9/i3;)V

    goto :goto_1

    .line 281
    :cond_45
    instance-of p1, p2, Lv9/m3;

    if-eqz p1, :cond_46

    .line 282
    check-cast p2, Lv9/m3;

    .line 283
    invoke-interface {v1, v2, p2}, Lw9/d;->e(Lw9/a;Lv9/m3;)V

    goto :goto_1

    .line 284
    :cond_46
    instance-of p1, p2, Lv9/p3;

    if-eqz p1, :cond_47

    .line 285
    check-cast p2, Lv9/p3;

    .line 286
    invoke-interface {v1, v2, p2}, Lw9/d;->f0(Lw9/a;Lv9/p3;)V

    :cond_47
    :goto_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv9/l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv9/l;

    iget-object v1, p0, Lv9/l;->a:Lea/m;

    iget-object v3, p1, Lv9/l;->a:Lea/m;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lv9/l;->b:Lv9/a;

    iget-object p1, p1, Lv9/l;->b:Lv9/a;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f(Lv9/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/l;->e:Lv9/i;

    if-nez p1, :cond_0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lw9/d;->n(Lv9/i;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lw9/d;->n(Lv9/i;)V

    .line 5
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lw9/d;->X(Lv9/i;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lw9/d;->X(Lv9/i;)V

    .line 7
    :cond_2
    :goto_0
    iput-object p1, p0, Lv9/l;->e:Lv9/i;

    return-void
.end method

.method public final g(Lv9/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/l;->i:Lv9/o;

    if-nez p1, :cond_0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lw9/d;->V(Lv9/o;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lw9/d;->V(Lv9/o;)V

    .line 5
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lw9/d;->d(Lv9/o;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lw9/d;->d(Lv9/o;)V

    .line 7
    :cond_2
    :goto_0
    iput-object p1, p0, Lv9/l;->i:Lv9/o;

    return-void
.end method

.method public final h(Lv9/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/l;->g:Lv9/q;

    if-nez p1, :cond_0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lw9/d;->k0(Lfb/d;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lw9/d;->k0(Lfb/d;)V

    .line 5
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lw9/d;->i0(Lfb/d;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lw9/d;->i0(Lfb/d;)V

    .line 7
    :cond_2
    :goto_0
    iput-object p1, p0, Lv9/l;->g:Lv9/q;

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lv9/l;->a:Lea/m;

    invoke-virtual {v0}, Lea/m;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lv9/l;->b:Lv9/a;

    invoke-virtual {v1}, Lv9/a;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final i(Lv9/s;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/l;->f:Lv9/s;

    if-nez p1, :cond_0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lw9/d;->w(Lv9/s;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lw9/d;->w(Lv9/s;)V

    .line 5
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lw9/d;->N(Lv9/s;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lw9/d;->N(Lv9/s;)V

    .line 7
    :cond_2
    :goto_0
    iput-object p1, p0, Lv9/l;->f:Lv9/s;

    return-void
.end method

.method public final j(Lv9/e0;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object p1

    iget-object v0, p0, Lv9/l;->c:Lv9/l$a;

    invoke-interface {p1, v0}, Lw9/d;->W(Lqd/l;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object p1

    iget-object v0, p0, Lv9/l;->c:Lv9/l$a;

    invoke-interface {p1, v0}, Lw9/d;->h(Lqd/l;)V

    :goto_0
    return-void
.end method

.method public final k(Lea/m;)V
    .locals 1

    const-string v0, "adaptKitPairedDevices"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv9/l;->c()Lw9/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lw9/d;->updatePair(Lea/m;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lv9/l;->a:Lea/m;

    iget-object v1, p0, Lv9/l;->b:Lv9/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdaptKitDeviceRequester(adaptKitPairedDevices="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", identifier="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
