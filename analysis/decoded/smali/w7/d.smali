.class public final Lw7/d;
.super Ljava/lang/Object;
.source "BigfootAuthProvider.kt"


# static fields
.field public static final a:Lfd/h;

.field public static final b:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lw7/d$a;->h:Lw7/d$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lw7/d;->a:Lfd/h;

    .line 2
    sget-object v0, Lw7/d$b;->h:Lw7/d$b;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lw7/d;->b:Lfd/h;

    return-void
.end method

.method public static final a()Z
    .locals 1

    sget-object v0, Lw7/d;->b:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
