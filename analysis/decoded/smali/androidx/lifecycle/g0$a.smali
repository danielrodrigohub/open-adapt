.class public final Landroidx/lifecycle/g0$a;
.super Lrd/o;
.source "SavedStateHandleSupport.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/g0;-><init>(Lb1/b;Landroidx/lifecycle/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Landroidx/lifecycle/h0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Landroidx/lifecycle/o0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/o0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/g0$a;->h:Landroidx/lifecycle/o0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/g0$a;->h:Landroidx/lifecycle/o0;

    .line 2
    const-class v1, Landroidx/lifecycle/h0;

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v3, Landroidx/lifecycle/f0;->h:Landroidx/lifecycle/f0;

    .line 5
    invoke-static {v1}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v4

    const-string v5, "initializer"

    .line 6
    invoke-static {v3, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v5, Lu0/d;

    invoke-static {v4}, Landroidx/activity/k;->j(Lwd/b;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v5, v4, v3}, Lu0/d;-><init>(Ljava/lang/Class;Lqd/l;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v3, Lu0/b;

    const/4 v4, 0x0

    new-array v4, v4, [Lu0/d;

    .line 9
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    check-cast v2, [Lu0/d;

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lu0/d;

    invoke-direct {v3, v2}, Lu0/b;-><init>([Lu0/d;)V

    .line 11
    new-instance v2, Landroidx/lifecycle/l0;

    .line 12
    invoke-interface {v0}, Landroidx/lifecycle/o0;->P()Landroidx/lifecycle/n0;

    move-result-object v4

    const-string v5, "owner.viewModelStore"

    invoke-static {v4, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    instance-of v5, v0, Landroidx/lifecycle/g;

    if-eqz v5, :cond_0

    .line 14
    check-cast v0, Landroidx/lifecycle/g;

    invoke-interface {v0}, Landroidx/lifecycle/g;->C()Lu0/a;

    move-result-object v0

    const-string v5, "{\n        owner.defaultV\u2026ModelCreationExtras\n    }"

    invoke-static {v0, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lu0/a$a;->b:Lu0/a$a;

    .line 16
    :goto_0
    invoke-direct {v2, v4, v3, v0}, Landroidx/lifecycle/l0;-><init>(Landroidx/lifecycle/n0;Landroidx/lifecycle/l0$a;Lu0/a;)V

    const-string v0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    .line 17
    invoke-virtual {v2, v0, v1}, Landroidx/lifecycle/l0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/h0;

    return-object v0
.end method
