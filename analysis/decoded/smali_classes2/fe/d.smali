.class public final Lfe/d;
.super Ljava/lang/Object;
.source "EventBusBuilder.java"


# static fields
.field public static final i:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/util/concurrent/ExecutorService;

.field public h:Lfe/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lfe/d;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lfe/d;->a:Z

    .line 3
    iput-boolean v0, p0, Lfe/d;->b:Z

    .line 4
    iput-boolean v0, p0, Lfe/d;->c:Z

    .line 5
    iput-boolean v0, p0, Lfe/d;->d:Z

    .line 6
    iput-boolean v0, p0, Lfe/d;->f:Z

    .line 7
    sget-object v0, Lfe/d;->i:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lfe/d;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
