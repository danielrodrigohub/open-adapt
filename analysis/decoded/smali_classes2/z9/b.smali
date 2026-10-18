.class public final synthetic Lz9/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic a:Lz9/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lz9/b;

    invoke-direct {v0}, Lz9/b;-><init>()V

    sput-object v0, Lz9/b;->a:Lz9/b;

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

    .line 1
    sget-object v0, Lz9/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const-string v1, "adaptkit.io.thread-"

    .line 2
    invoke-static {v1, v0}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lz9/e;

    invoke-direct {v1, p1}, Lz9/e;-><init>(Ljava/lang/Runnable;)V

    const/16 p1, 0xa

    const/4 v2, 0x6

    invoke-static {v0, p1, v1, v2}, Landroidx/lifecycle/m0;->d(Ljava/lang/String;ILqd/a;I)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
