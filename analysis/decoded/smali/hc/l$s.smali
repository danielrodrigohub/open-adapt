.class public final Lhc/l$s;
.super Lpc/c;
.source "CoreRFBigfoot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->j(Lnc/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "Lmc/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lpc/c;-><init>(Llc/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p1

    check-cast v0, [B

    .line 2
    invoke-static {v0}, Lgc/h0;->H([B)Lgc/h0;

    move-result-object v0

    .line 3
    new-instance v9, Lmc/f;

    .line 4
    new-instance v2, Lmc/d;

    .line 5
    invoke-virtual {v0}, Lgc/h0;->z()Lgc/m;

    move-result-object v1

    invoke-virtual {v1}, Lgc/m;->y()I

    move-result v11

    .line 6
    invoke-virtual {v0}, Lgc/h0;->z()Lgc/m;

    move-result-object v1

    invoke-virtual {v1}, Lgc/m;->z()I

    move-result v12

    .line 7
    invoke-virtual {v0}, Lgc/h0;->z()Lgc/m;

    move-result-object v1

    invoke-virtual {v1}, Lgc/m;->A()I

    move-result v13

    .line 8
    invoke-virtual {v0}, Lgc/h0;->z()Lgc/m;

    move-result-object v1

    invoke-virtual {v1}, Lgc/m;->B()I

    move-result v14

    .line 9
    invoke-virtual {v0}, Lgc/h0;->z()Lgc/m;

    move-result-object v1

    invoke-virtual {v1}, Lgc/m;->D()I

    move-result v15

    .line 10
    invoke-virtual {v0}, Lgc/h0;->z()Lgc/m;

    move-result-object v1

    invoke-virtual {v1}, Lgc/m;->E()I

    move-result v16

    .line 11
    invoke-virtual {v0}, Lgc/h0;->z()Lgc/m;

    move-result-object v1

    invoke-virtual {v1}, Lgc/m;->F()I

    move-result v17

    .line 12
    invoke-virtual {v0}, Lgc/h0;->z()Lgc/m;

    move-result-object v1

    invoke-virtual {v1}, Lgc/m;->G()I

    move-result v18

    .line 13
    invoke-virtual {v0}, Lgc/h0;->z()Lgc/m;

    move-result-object v1

    invoke-virtual {v1}, Lgc/m;->H()I

    move-result v19

    move-object v10, v2

    .line 14
    invoke-direct/range {v10 .. v19}, Lmc/d;-><init>(IIIIIIIII)V

    .line 15
    new-instance v3, Lmc/g;

    .line 16
    invoke-virtual {v0}, Lgc/h0;->A()Lgc/n;

    move-result-object v1

    invoke-virtual {v1}, Lgc/n;->z()I

    move-result v1

    .line 17
    invoke-virtual {v0}, Lgc/h0;->A()Lgc/n;

    move-result-object v4

    invoke-virtual {v4}, Lgc/n;->A()I

    move-result v4

    .line 18
    invoke-direct {v3, v1, v4}, Lmc/g;-><init>(II)V

    .line 19
    new-instance v4, Lmc/i;

    .line 20
    invoke-virtual {v0}, Lgc/h0;->B()Lgc/o;

    move-result-object v1

    invoke-virtual {v1}, Lgc/o;->z()I

    move-result v11

    .line 21
    invoke-virtual {v0}, Lgc/h0;->B()Lgc/o;

    move-result-object v1

    invoke-virtual {v1}, Lgc/o;->A()I

    move-result v12

    .line 22
    invoke-virtual {v0}, Lgc/h0;->B()Lgc/o;

    move-result-object v1

    invoke-virtual {v1}, Lgc/o;->B()I

    move-result v13

    .line 23
    invoke-virtual {v0}, Lgc/h0;->B()Lgc/o;

    move-result-object v1

    invoke-virtual {v1}, Lgc/o;->C()I

    move-result v14

    .line 24
    invoke-virtual {v0}, Lgc/h0;->B()Lgc/o;

    move-result-object v1

    invoke-virtual {v1}, Lgc/o;->D()I

    move-result v15

    .line 25
    invoke-virtual {v0}, Lgc/h0;->B()Lgc/o;

    move-result-object v1

    invoke-virtual {v1}, Lgc/o;->E()I

    move-result v16

    .line 26
    invoke-virtual {v0}, Lgc/h0;->B()Lgc/o;

    move-result-object v1

    invoke-virtual {v1}, Lgc/o;->F()I

    move-result v17

    .line 27
    invoke-virtual {v0}, Lgc/h0;->B()Lgc/o;

    move-result-object v1

    invoke-virtual {v1}, Lgc/o;->G()I

    move-result v18

    .line 28
    invoke-virtual {v0}, Lgc/h0;->B()Lgc/o;

    move-result-object v1

    invoke-virtual {v1}, Lgc/o;->H()I

    move-result v19

    move-object v10, v4

    .line 29
    invoke-direct/range {v10 .. v19}, Lmc/i;-><init>(IIIIIIIII)V

    .line 30
    new-instance v5, Lmc/u;

    .line 31
    invoke-virtual {v0}, Lgc/h0;->D()Lgc/z;

    move-result-object v1

    invoke-virtual {v1}, Lgc/z;->y()I

    move-result v21

    .line 32
    invoke-virtual {v0}, Lgc/h0;->D()Lgc/z;

    move-result-object v1

    invoke-virtual {v1}, Lgc/z;->z()I

    move-result v22

    .line 33
    invoke-virtual {v0}, Lgc/h0;->D()Lgc/z;

    move-result-object v1

    invoke-virtual {v1}, Lgc/z;->A()I

    move-result v23

    .line 34
    invoke-virtual {v0}, Lgc/h0;->D()Lgc/z;

    move-result-object v1

    invoke-virtual {v1}, Lgc/z;->C()I

    move-result v24

    .line 35
    invoke-virtual {v0}, Lgc/h0;->D()Lgc/z;

    move-result-object v1

    invoke-virtual {v1}, Lgc/z;->D()I

    move-result v25

    .line 36
    invoke-virtual {v0}, Lgc/h0;->D()Lgc/z;

    move-result-object v1

    invoke-virtual {v1}, Lgc/z;->E()I

    move-result v26

    .line 37
    invoke-virtual {v0}, Lgc/h0;->D()Lgc/z;

    move-result-object v1

    invoke-virtual {v1}, Lgc/z;->F()I

    move-result v27

    .line 38
    invoke-virtual {v0}, Lgc/h0;->D()Lgc/z;

    move-result-object v1

    invoke-virtual {v1}, Lgc/z;->G()I

    move-result v28

    .line 39
    invoke-virtual {v0}, Lgc/h0;->D()Lgc/z;

    move-result-object v1

    invoke-virtual {v1}, Lgc/z;->H()I

    move-result v29

    move-object/from16 v20, v5

    .line 40
    invoke-direct/range {v20 .. v29}, Lmc/u;-><init>(IIIIIIIII)V

    .line 41
    new-instance v6, Lmc/f0;

    .line 42
    invoke-virtual {v0}, Lgc/h0;->E()Lgc/f0;

    move-result-object v1

    invoke-virtual {v1}, Lgc/f0;->z()I

    move-result v1

    .line 43
    invoke-virtual {v0}, Lgc/h0;->E()Lgc/f0;

    move-result-object v7

    invoke-virtual {v7}, Lgc/f0;->A()I

    move-result v7

    .line 44
    invoke-virtual {v0}, Lgc/h0;->E()Lgc/f0;

    move-result-object v8

    invoke-virtual {v8}, Lgc/f0;->B()I

    move-result v8

    .line 45
    invoke-virtual {v0}, Lgc/h0;->E()Lgc/f0;

    move-result-object v10

    invoke-virtual {v10}, Lgc/f0;->C()I

    move-result v10

    .line 46
    invoke-direct {v6, v1, v7, v8, v10}, Lmc/f0;-><init>(IIII)V

    .line 47
    new-instance v7, Lmc/i0;

    .line 48
    invoke-virtual {v0}, Lgc/h0;->F()Lgc/m0;

    move-result-object v1

    invoke-virtual {v1}, Lgc/m0;->y()I

    move-result v1

    .line 49
    invoke-virtual {v0}, Lgc/h0;->F()Lgc/m0;

    move-result-object v8

    invoke-virtual {v8}, Lgc/m0;->z()I

    move-result v8

    .line 50
    invoke-virtual {v0}, Lgc/h0;->F()Lgc/m0;

    move-result-object v10

    invoke-virtual {v10}, Lgc/m0;->A()I

    move-result v10

    .line 51
    invoke-virtual {v0}, Lgc/h0;->F()Lgc/m0;

    move-result-object v11

    invoke-virtual {v11}, Lgc/m0;->B()I

    move-result v11

    .line 52
    invoke-direct {v7, v1, v8, v10, v11}, Lmc/i0;-><init>(IIII)V

    .line 53
    new-instance v8, Lmc/q;

    .line 54
    invoke-virtual {v0}, Lgc/h0;->C()Lgc/t;

    move-result-object v1

    invoke-virtual {v1}, Lgc/t;->A()I

    move-result v1

    .line 55
    invoke-virtual {v0}, Lgc/h0;->C()Lgc/t;

    move-result-object v0

    invoke-virtual {v0}, Lgc/t;->z()I

    move-result v0

    .line 56
    invoke-direct {v8, v1, v0}, Lmc/q;-><init>(II)V

    move-object v1, v9

    .line 57
    invoke-direct/range {v1 .. v8}, Lmc/f;-><init>(Lmc/d;Lmc/g;Lmc/i;Lmc/u;Lmc/f0;Lmc/i0;Lmc/q;)V

    return-object v9
.end method
