.class public final Ln3/y0$c$a;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    iput-wide v0, p0, Ln3/y0$c$a;->b:J

    return-void
.end method

.method public constructor <init>(Ln3/y0$c;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-wide v0, p1, Ln3/y0$c;->h:J

    iput-wide v0, p0, Ln3/y0$c$a;->a:J

    .line 5
    iget-wide v0, p1, Ln3/y0$c;->i:J

    iput-wide v0, p0, Ln3/y0$c$a;->b:J

    .line 6
    iget-boolean v0, p1, Ln3/y0$c;->j:Z

    iput-boolean v0, p0, Ln3/y0$c$a;->c:Z

    .line 7
    iget-boolean v0, p1, Ln3/y0$c;->k:Z

    iput-boolean v0, p0, Ln3/y0$c$a;->d:Z

    .line 8
    iget-boolean p1, p1, Ln3/y0$c;->l:Z

    iput-boolean p1, p0, Ln3/y0$c$a;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Ln3/y0$d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ln3/y0$d;

    invoke-direct {v0, p0}, Ln3/y0$d;-><init>(Ln3/y0$c$a;)V

    return-object v0
.end method
