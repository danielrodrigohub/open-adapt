.class public final Lz4/e;
.super Lz4/m;
.source "SimpleSubtitleDecoder.java"


# instance fields
.field public final synthetic l:Lz4/f;


# direct methods
.method public constructor <init>(Lz4/f;)V
    .locals 0

    iput-object p1, p0, Lz4/e;->l:Lz4/f;

    invoke-direct {p0}, Lz4/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final o()V
    .locals 5

    .line 1
    iget-object v0, p0, Lz4/e;->l:Lz4/f;

    .line 2
    iget-object v1, v0, Lq3/j;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lz4/m;->p()V

    .line 4
    iget-object v2, v0, Lq3/j;->f:[Lq3/h;

    iget v3, v0, Lq3/j;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lq3/j;->h:I

    aput-object p0, v2, v3

    .line 5
    invoke-virtual {v0}, Lq3/j;->h()V

    .line 6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
