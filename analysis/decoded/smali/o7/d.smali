.class public final synthetic Lo7/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic a:Lo7/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lo7/d;

    invoke-direct {v0}, Lo7/d;-><init>()V

    sput-object v0, Lo7/d;->a:Lo7/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    sget-object v0, Lo7/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lx/a;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lx/a;-><init>(Ljava/lang/Object;I)V

    .line 2
    sget-object p1, Lo7/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    const-string v2, "adapt.network.thread-"

    .line 3
    invoke-static {v2, p1}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
