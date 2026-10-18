.class public final synthetic Lo7/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic b:Lo7/w;

.field public static final synthetic c:Lo7/w;

.field public static final synthetic d:Lo7/w;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lo7/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo7/w;-><init>(I)V

    sput-object v0, Lo7/w;->b:Lo7/w;

    new-instance v0, Lo7/w;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo7/w;-><init>(I)V

    sput-object v0, Lo7/w;->c:Lo7/w;

    new-instance v0, Lo7/w;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lo7/w;-><init>(I)V

    sput-object v0, Lo7/w;->d:Lo7/w;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lo7/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4

    iget v0, p0, Lo7/w;->a:I

    const/4 v1, 0x6

    const/16 v2, 0xa

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    sget-object v0, Lz9/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const-string v3, "adaptkit.device.thread-"

    .line 2
    invoke-static {v3, v0}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v3, Lz9/d;

    invoke-direct {v3, p1}, Lz9/d;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v2, v3, v1}, Landroidx/lifecycle/m0;->d(Ljava/lang/String;ILqd/a;I)Ljava/lang/Thread;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_1
    sget-object v0, Lo7/x;->a:Lo7/x;

    .line 5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ly0/x;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Ly0/x;-><init>(Ljava/lang/Object;I)V

    const-string p1, "NewRelic"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0

    .line 6
    :goto_0
    sget-object v0, Lic/g;->b:Lic/g;

    const-string v0, "ConnectionManagerShutdown-"

    .line 7
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    sget-object v3, Lic/g;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v3, Lic/h;

    invoke-direct {v3, p1}, Lic/h;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v2, v3, v1}, Landroidx/lifecycle/m0;->d(Ljava/lang/String;ILqd/a;I)Ljava/lang/Thread;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
