.class public final synthetic Lz9/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic b:Lz9/c;

.field public static final synthetic c:Lz9/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lz9/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz9/c;-><init>(I)V

    sput-object v0, Lz9/c;->b:Lz9/c;

    new-instance v0, Lz9/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz9/c;-><init>(I)V

    sput-object v0, Lz9/c;->c:Lz9/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lz9/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5

    iget v0, p0, Lz9/c;->a:I

    const/4 v1, 0x6

    const/16 v2, 0xa

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    sget-object v0, Lz9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const-string v3, "adaptkit.network.thread-"

    .line 2
    invoke-static {v3, v0}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v3, Lz9/f;

    invoke-direct {v3, p1}, Lz9/f;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v2, v3, v1}, Landroidx/lifecycle/m0;->d(Ljava/lang/String;ILqd/a;I)Ljava/lang/Thread;

    move-result-object p1

    return-object p1

    .line 4
    :goto_0
    sget-object v0, Lnb/b;->i:Lnb/b;

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TelemetryInsertExecutor-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v3, Lnb/a;

    invoke-direct {v3, p1}, Lnb/a;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v2, v3, v1}, Landroidx/lifecycle/m0;->d(Ljava/lang/String;ILqd/a;I)Ljava/lang/Thread;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
