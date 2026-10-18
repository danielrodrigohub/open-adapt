.class public final Lfb/p;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# instance fields
.field public final synthetic h:Lfb/o;


# direct methods
.method public constructor <init>(Lfb/o;)V
    .locals 0

    iput-object p1, p0, Lfb/p;->h:Lfb/o;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfb/p;->h:Lfb/o;

    new-instance v1, Lba/l0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lba/l0;-><init>(I)V

    .line 2
    iput-object v1, v0, Lfb/o;->e:Lba/v;

    .line 3
    iget-object v0, p0, Lfb/p;->h:Lfb/o;

    new-instance v1, Lba/l0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lba/l0;-><init>(I)V

    .line 4
    iput-object v1, v0, Lfb/o;->f:Lba/v;

    .line 5
    iget-object v0, p0, Lfb/p;->h:Lfb/o;

    .line 6
    invoke-virtual {v0}, Lfb/o;->c()V

    .line 7
    iget-object v0, p0, Lfb/p;->h:Lfb/o;

    .line 8
    invoke-virtual {v0}, Lfb/o;->d()V

    return-void
.end method
