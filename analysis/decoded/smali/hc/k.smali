.class public final synthetic Lhc/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic a:Lhc/l;


# direct methods
.method public synthetic constructor <init>(Lhc/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhc/k;->a:Lhc/l;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    iget-object v0, p0, Lhc/k;->a:Lhc/l;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeDescriptor-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lhc/l;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lhc/c0;

    invoke-direct {v1, p1}, Lhc/c0;-><init>(Ljava/lang/Runnable;)V

    const/16 p1, 0xa

    const/4 v2, 0x6

    invoke-static {v0, p1, v1, v2}, Landroidx/lifecycle/m0;->d(Ljava/lang/String;ILqd/a;I)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
