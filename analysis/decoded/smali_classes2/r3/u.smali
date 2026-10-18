.class public final synthetic Lr3/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# instance fields
.field public final synthetic a:Lr3/v;

.field public final synthetic b:Lr3/s$b;


# direct methods
.method public synthetic constructor <init>(Lr3/v;Lr3/s$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/u;->a:Lr3/v;

    iput-object p2, p0, Lr3/u;->b:Lr3/s$b;

    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    iget-object p1, p0, Lr3/u;->a:Lr3/v;

    iget-object p4, p0, Lr3/u;->b:Lr3/s$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    check-cast p4, Lr3/b$b;

    .line 2
    iget-object p1, p4, Lr3/b$b;->a:Lr3/b;

    iget-object p1, p1, Lr3/b;->y:Lr3/b$c;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
