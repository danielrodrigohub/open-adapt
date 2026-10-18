.class public final synthetic Li8/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic a:Li8/g;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Li8/g;

    invoke-direct {v0}, Li8/g;-><init>()V

    sput-object v0, Li8/g;->a:Li8/g;

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

    sget-object v0, Li8/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Li8/f;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Li8/f;-><init>(Ljava/lang/Object;I)V

    .line 2
    sget-object p1, Li8/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    const-string v2, "nike.adapt.presenter-"

    .line 3
    invoke-static {v2, p1}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
