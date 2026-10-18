.class public final Lv9/i;
.super Ljava/lang/Object;
.source "AdaptKitDeviceControllerListener.kt"

# interfaces
.implements Lv9/p0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv9/p0<",
        "Lv9/g;",
        "Lv9/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lfd/d;

.field public b:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "-",
            "Lv9/h2<",
            "Lv9/y1;",
            ">;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "-",
            "Lv9/h2<",
            "Lv9/f2;",
            ">;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "-",
            "Lv9/g2<",
            "Lv9/w1;",
            ">;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "-",
            "Lv9/h2<",
            "Lv9/g;",
            ">;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "-",
            "Lv9/g2<",
            "Lv9/f;",
            ">;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lv9/i$f;

    invoke-direct {v0, p1}, Lv9/i$f;-><init>(Z)V

    const/4 p1, 0x1

    invoke-static {p1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lv9/i;->a:Lfd/d;

    .line 4
    sget-object p1, Lv9/a;->i:Lv9/a$a;

    .line 5
    sget-object p1, Lv9/a;->j:Lv9/a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/os/Parcelable;)V
    .locals 0

    check-cast p1, Lv9/g;

    invoke-virtual {p0, p1}, Lv9/i;->e(Lv9/g;)V

    return-void
.end method

.method public final bridge synthetic b(Lv9/m;)V
    .locals 0

    check-cast p1, Lv9/f;

    invoke-virtual {p0, p1}, Lv9/i;->d(Lv9/f;)V

    return-void
.end method

.method public final c()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lv9/i;->a:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public final d(Lv9/f;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lv9/i;->f:Lqd/l;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lv9/i;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lv9/i$a;

    invoke-direct {v2, p0, v0}, Lv9/i$a;-><init>(Lv9/i;Lqd/l;)V

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Laa/b;

    invoke-direct {v0, v2, p1}, Laa/b;-><init>(Lqd/l;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    :goto_0
    instance-of v0, p1, Lv9/b2;

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    instance-of v0, p1, Lv9/n2;

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 6
    :cond_3
    instance-of v0, p1, Lv9/r4;

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 7
    :cond_4
    instance-of v0, p1, Lv9/j4;

    if-eqz v0, :cond_5

    goto/16 :goto_1

    .line 8
    :cond_5
    instance-of v0, p1, Lv9/w1;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lv9/i;->d:Lqd/l;

    if-eqz v0, :cond_33

    .line 9
    invoke-virtual {p0}, Lv9/i;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lv9/i$b;

    invoke-direct {v2, p0, v0}, Lv9/i$b;-><init>(Lv9/i;Lqd/l;)V

    if-eqz v1, :cond_6

    .line 10
    new-instance v0, Laa/b;

    invoke-direct {v0, v2, p1}, Laa/b;-><init>(Lqd/l;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_6
    invoke-interface {v2, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 11
    :cond_7
    instance-of v0, p1, Lv9/a4;

    if-eqz v0, :cond_8

    goto/16 :goto_1

    .line 12
    :cond_8
    instance-of v0, p1, Lv9/r3;

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 13
    :cond_9
    instance-of v0, p1, Lv9/l5;

    if-eqz v0, :cond_a

    goto/16 :goto_1

    .line 14
    :cond_a
    instance-of v0, p1, Lv9/x4;

    if-eqz v0, :cond_b

    goto/16 :goto_1

    .line 15
    :cond_b
    instance-of v0, p1, Lv9/u4;

    if-eqz v0, :cond_c

    goto/16 :goto_1

    .line 16
    :cond_c
    instance-of v0, p1, Lv9/o4;

    if-eqz v0, :cond_d

    goto/16 :goto_1

    .line 17
    :cond_d
    instance-of v0, p1, Lv9/g4;

    if-eqz v0, :cond_e

    goto/16 :goto_1

    .line 18
    :cond_e
    instance-of v0, p1, Lv9/i5;

    if-eqz v0, :cond_f

    goto/16 :goto_1

    .line 19
    :cond_f
    instance-of v0, p1, Lv9/x3;

    if-eqz v0, :cond_10

    goto/16 :goto_1

    .line 20
    :cond_10
    instance-of v0, p1, Lv9/d4;

    if-eqz v0, :cond_11

    goto/16 :goto_1

    .line 21
    :cond_11
    instance-of v0, p1, Lv9/u3;

    if-eqz v0, :cond_12

    goto/16 :goto_1

    .line 22
    :cond_12
    instance-of v0, p1, Lv9/m4;

    if-eqz v0, :cond_13

    goto/16 :goto_1

    .line 23
    :cond_13
    instance-of v0, p1, Lv9/z1;

    if-eqz v0, :cond_14

    goto/16 :goto_1

    .line 24
    :cond_14
    instance-of v0, p1, Lv9/f1;

    if-eqz v0, :cond_15

    goto/16 :goto_1

    .line 25
    :cond_15
    instance-of v0, p1, Lv9/q2;

    if-eqz v0, :cond_16

    goto/16 :goto_1

    .line 26
    :cond_16
    instance-of v0, p1, Lv9/b3;

    if-eqz v0, :cond_17

    goto/16 :goto_1

    .line 27
    :cond_17
    instance-of v0, p1, Lv9/y2;

    if-eqz v0, :cond_18

    goto/16 :goto_1

    .line 28
    :cond_18
    instance-of v0, p1, Lv9/i2;

    if-eqz v0, :cond_19

    goto/16 :goto_1

    .line 29
    :cond_19
    instance-of v0, p1, Lv9/m2;

    if-eqz v0, :cond_1a

    goto/16 :goto_1

    .line 30
    :cond_1a
    instance-of v0, p1, Lv9/z6;

    if-eqz v0, :cond_1b

    goto/16 :goto_1

    .line 31
    :cond_1b
    instance-of v0, p1, Lv9/c5;

    if-eqz v0, :cond_1c

    goto/16 :goto_1

    .line 32
    :cond_1c
    instance-of v0, p1, Lv9/f5;

    if-eqz v0, :cond_1d

    goto/16 :goto_1

    .line 33
    :cond_1d
    instance-of v0, p1, Lv9/y0;

    if-eqz v0, :cond_1e

    goto/16 :goto_1

    .line 34
    :cond_1e
    instance-of v0, p1, Lv9/b1;

    if-eqz v0, :cond_1f

    goto/16 :goto_1

    .line 35
    :cond_1f
    instance-of v0, p1, Lv9/u0;

    if-eqz v0, :cond_20

    goto/16 :goto_1

    .line 36
    :cond_20
    instance-of v0, p1, Lv9/n6;

    if-eqz v0, :cond_21

    goto/16 :goto_1

    .line 37
    :cond_21
    instance-of v0, p1, Lv9/k6;

    if-eqz v0, :cond_22

    goto/16 :goto_1

    .line 38
    :cond_22
    instance-of v0, p1, Lv9/h6;

    if-eqz v0, :cond_23

    goto :goto_1

    .line 39
    :cond_23
    instance-of v0, p1, Lv9/r6;

    if-eqz v0, :cond_24

    goto :goto_1

    .line 40
    :cond_24
    instance-of v0, p1, Lv9/d6;

    if-eqz v0, :cond_25

    goto :goto_1

    .line 41
    :cond_25
    instance-of v0, p1, Lv9/v6;

    if-eqz v0, :cond_26

    goto :goto_1

    .line 42
    :cond_26
    instance-of v0, p1, Lv9/b6;

    if-eqz v0, :cond_27

    goto :goto_1

    .line 43
    :cond_27
    instance-of v0, p1, Lv9/y5;

    if-eqz v0, :cond_28

    goto :goto_1

    .line 44
    :cond_28
    instance-of v0, p1, Lv9/v5;

    if-eqz v0, :cond_29

    goto :goto_1

    .line 45
    :cond_29
    instance-of v0, p1, Lv9/r5;

    if-eqz v0, :cond_2a

    goto :goto_1

    .line 46
    :cond_2a
    instance-of v0, p1, Lv9/l2;

    if-eqz v0, :cond_2b

    goto :goto_1

    .line 47
    :cond_2b
    instance-of v0, p1, Lv9/q1;

    if-eqz v0, :cond_2c

    goto :goto_1

    .line 48
    :cond_2c
    instance-of v0, p1, Lv9/t1;

    if-eqz v0, :cond_2d

    goto :goto_1

    .line 49
    :cond_2d
    instance-of v0, p1, Lv9/m1;

    if-eqz v0, :cond_2e

    goto :goto_1

    .line 50
    :cond_2e
    instance-of v0, p1, Lv9/i1;

    if-eqz v0, :cond_2f

    goto :goto_1

    .line 51
    :cond_2f
    instance-of v0, p1, Lv9/e3;

    if-eqz v0, :cond_30

    goto :goto_1

    .line 52
    :cond_30
    instance-of v0, p1, Lv9/h3;

    if-eqz v0, :cond_31

    goto :goto_1

    .line 53
    :cond_31
    instance-of v0, p1, Lv9/l3;

    if-eqz v0, :cond_32

    goto :goto_1

    .line 54
    :cond_32
    instance-of p1, p1, Lv9/o3;

    :cond_33
    :goto_1
    return-void
.end method

.method public final e(Lv9/g;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lv9/i;->e:Lqd/l;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lv9/i;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lv9/i$d;

    invoke-direct {v2, p0, v0}, Lv9/i$d;-><init>(Lv9/i;Lqd/l;)V

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Laa/b;

    invoke-direct {v0, v2, p1}, Laa/b;-><init>(Lqd/l;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    :goto_0
    instance-of v0, p1, Lv9/p2;

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    instance-of v0, p1, Lv9/t4;

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 6
    :cond_3
    instance-of v0, p1, Lv9/l4;

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 7
    :cond_4
    instance-of v0, p1, Lv9/y1;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lv9/i;->b:Lqd/l;

    if-eqz v0, :cond_37

    .line 8
    invoke-virtual {p0}, Lv9/i;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lv9/i$e;

    invoke-direct {v2, p0, v0}, Lv9/i$e;-><init>(Lv9/i;Lqd/l;)V

    if-eqz v1, :cond_5

    .line 9
    new-instance v0, Laa/b;

    invoke-direct {v0, v2, p1}, Laa/b;-><init>(Lqd/l;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_5
    invoke-interface {v2, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 10
    :cond_6
    instance-of v0, p1, Lv9/c4;

    if-eqz v0, :cond_7

    goto/16 :goto_1

    .line 11
    :cond_7
    instance-of v0, p1, Lv9/y4;

    if-eqz v0, :cond_8

    goto/16 :goto_1

    .line 12
    :cond_8
    instance-of v0, p1, Lv9/w4;

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 13
    :cond_9
    instance-of v0, p1, Lv9/t3;

    if-eqz v0, :cond_a

    goto/16 :goto_1

    .line 14
    :cond_a
    instance-of v0, p1, Lv9/n5;

    if-eqz v0, :cond_b

    goto/16 :goto_1

    .line 15
    :cond_b
    instance-of v0, p1, Lv9/i4;

    if-eqz v0, :cond_c

    goto/16 :goto_1

    .line 16
    :cond_c
    instance-of v0, p1, Lv9/q4;

    if-eqz v0, :cond_d

    goto/16 :goto_1

    .line 17
    :cond_d
    instance-of v0, p1, Lv9/z3;

    if-eqz v0, :cond_e

    goto/16 :goto_1

    .line 18
    :cond_e
    instance-of v0, p1, Lv9/f4;

    if-eqz v0, :cond_f

    goto/16 :goto_1

    .line 19
    :cond_f
    instance-of v0, p1, Lv9/f2;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lv9/i;->c:Lqd/l;

    if-eqz v0, :cond_37

    .line 20
    invoke-virtual {p0}, Lv9/i;->c()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lv9/i$c;

    invoke-direct {v2, p0, v0}, Lv9/i$c;-><init>(Lv9/i;Lqd/l;)V

    if-eqz v1, :cond_10

    .line 21
    new-instance v0, Laa/b;

    invoke-direct {v0, v2, p1}, Laa/b;-><init>(Lqd/l;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_10
    invoke-interface {v2, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 22
    :cond_11
    instance-of v0, p1, Lv9/w3;

    if-eqz v0, :cond_12

    goto/16 :goto_1

    .line 23
    :cond_12
    instance-of v0, p1, Lv9/n4;

    if-eqz v0, :cond_13

    goto/16 :goto_1

    .line 24
    :cond_13
    instance-of v0, p1, Lv9/a2;

    if-eqz v0, :cond_14

    goto/16 :goto_1

    .line 25
    :cond_14
    instance-of v0, p1, Lv9/d3;

    if-eqz v0, :cond_15

    goto/16 :goto_1

    .line 26
    :cond_15
    instance-of v0, p1, Lv9/a3;

    if-eqz v0, :cond_16

    goto/16 :goto_1

    .line 27
    :cond_16
    instance-of v0, p1, Lv9/k2;

    if-eqz v0, :cond_17

    goto/16 :goto_1

    .line 28
    :cond_17
    instance-of v0, p1, Lv9/e5;

    if-eqz v0, :cond_18

    goto/16 :goto_1

    .line 29
    :cond_18
    instance-of v0, p1, Lv9/h5;

    if-eqz v0, :cond_19

    goto/16 :goto_1

    .line 30
    :cond_19
    instance-of v0, p1, Lv9/a1;

    if-eqz v0, :cond_1a

    goto/16 :goto_1

    .line 31
    :cond_1a
    instance-of v0, p1, Lv9/e1;

    if-eqz v0, :cond_1b

    goto/16 :goto_1

    .line 32
    :cond_1b
    instance-of v0, p1, Lv9/w0;

    if-eqz v0, :cond_1c

    goto/16 :goto_1

    .line 33
    :cond_1c
    instance-of v0, p1, Lv9/c1;

    if-eqz v0, :cond_1d

    goto/16 :goto_1

    .line 34
    :cond_1d
    instance-of v0, p1, Lv9/p6;

    if-eqz v0, :cond_1e

    goto/16 :goto_1

    .line 35
    :cond_1e
    instance-of v0, p1, Lv9/m6;

    if-eqz v0, :cond_1f

    goto/16 :goto_1

    .line 36
    :cond_1f
    instance-of v0, p1, Lv9/j6;

    if-eqz v0, :cond_20

    goto/16 :goto_1

    .line 37
    :cond_20
    instance-of v0, p1, Lv9/t6;

    if-eqz v0, :cond_21

    goto/16 :goto_1

    .line 38
    :cond_21
    instance-of v0, p1, Lv9/f6;

    if-eqz v0, :cond_22

    goto/16 :goto_1

    .line 39
    :cond_22
    instance-of v0, p1, Lv9/x6;

    if-eqz v0, :cond_23

    goto/16 :goto_1

    .line 40
    :cond_23
    instance-of v0, p1, Lv9/x5;

    if-eqz v0, :cond_24

    goto/16 :goto_1

    .line 41
    :cond_24
    instance-of v0, p1, Lv9/u5;

    if-eqz v0, :cond_25

    goto/16 :goto_1

    .line 42
    :cond_25
    instance-of v0, p1, Lv9/q5;

    if-eqz v0, :cond_26

    goto/16 :goto_1

    .line 43
    :cond_26
    instance-of v0, p1, Lv9/a6;

    if-eqz v0, :cond_27

    goto :goto_1

    .line 44
    :cond_27
    instance-of v0, p1, Lv9/t5;

    if-eqz v0, :cond_28

    goto :goto_1

    .line 45
    :cond_28
    instance-of v0, p1, Lv9/c6;

    if-eqz v0, :cond_29

    goto :goto_1

    .line 46
    :cond_29
    instance-of v0, p1, Lv9/g6;

    if-eqz v0, :cond_2a

    goto :goto_1

    .line 47
    :cond_2a
    instance-of v0, p1, Lv9/p5;

    if-eqz v0, :cond_2b

    goto :goto_1

    .line 48
    :cond_2b
    instance-of v0, p1, Lv9/s1;

    if-eqz v0, :cond_2c

    goto :goto_1

    .line 49
    :cond_2c
    instance-of v0, p1, Lv9/v1;

    if-eqz v0, :cond_2d

    goto :goto_1

    .line 50
    :cond_2d
    instance-of v0, p1, Lv9/p1;

    if-eqz v0, :cond_2e

    goto :goto_1

    .line 51
    :cond_2e
    instance-of v0, p1, Lv9/n1;

    if-eqz v0, :cond_2f

    goto :goto_1

    .line 52
    :cond_2f
    instance-of v0, p1, Lv9/l1;

    if-eqz v0, :cond_30

    goto :goto_1

    .line 53
    :cond_30
    instance-of v0, p1, Lv9/j1;

    if-eqz v0, :cond_31

    goto :goto_1

    .line 54
    :cond_31
    instance-of v0, p1, Lv9/g3;

    if-eqz v0, :cond_32

    goto :goto_1

    .line 55
    :cond_32
    instance-of v0, p1, Lv9/j3;

    if-eqz v0, :cond_33

    goto :goto_1

    .line 56
    :cond_33
    instance-of v0, p1, Lv9/n3;

    if-eqz v0, :cond_34

    goto :goto_1

    .line 57
    :cond_34
    instance-of v0, p1, Lv9/q3;

    if-eqz v0, :cond_35

    goto :goto_1

    .line 58
    :cond_35
    instance-of v0, p1, Lv9/k3;

    if-eqz v0, :cond_36

    goto :goto_1

    .line 59
    :cond_36
    instance-of p1, p1, Lv9/y6;

    :cond_37
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
