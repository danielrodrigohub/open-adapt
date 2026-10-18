.class public final synthetic Lv9/r0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lqd/a;


# direct methods
.method public synthetic constructor <init>(Lqd/a;)V
    .locals 0

    iput-object p1, p0, Lv9/r0;->h:Lqd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lv9/r0;->h:Lqd/a;

    sget-object v1, Lz9/a;->i:Lz9/a;

    const-string v1, "$tmp0"

    .line 1
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    return-void
.end method
