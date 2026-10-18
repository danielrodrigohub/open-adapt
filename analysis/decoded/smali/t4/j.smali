.class public abstract Lt4/j;
.super Ljava/lang/Object;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt4/j$a;,
        Lt4/j$b;
    }
.end annotation


# instance fields
.field public final a:Ln3/s0;

.field public final b:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Lt4/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt4/e;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt4/e;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt4/e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lt4/i;


# direct methods
.method public constructor <init>(Ln3/s0;Ljava/util/List;Lt4/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 3
    iput-object p1, p0, Lt4/j;->a:Ln3/s0;

    .line 4
    invoke-static {p2}, Lu6/v;->s(Ljava/util/Collection;)Lu6/v;

    move-result-object p1

    iput-object p1, p0, Lt4/j;->b:Lu6/v;

    .line 5
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lt4/j;->d:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lt4/j;->e:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lt4/j;->f:Ljava/util/List;

    .line 8
    invoke-virtual {p3, p0}, Lt4/k;->a(Lt4/j;)Lt4/i;

    move-result-object p1

    iput-object p1, p0, Lt4/j;->g:Lt4/i;

    .line 9
    iget-wide v0, p3, Lt4/k;->c:J

    iget-wide v4, p3, Lt4/k;->b:J

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Lm5/g0;->R(JJJ)J

    move-result-wide p1

    .line 10
    iput-wide p1, p0, Lt4/j;->c:J

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ls4/d;
.end method

.method public abstract m()Lt4/i;
.end method
