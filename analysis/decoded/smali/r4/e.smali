.class public abstract Lr4/e;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Ll5/d0$d;


# instance fields
.field public final a:J

.field public final b:Ll5/m;

.field public final c:I

.field public final d:Ln3/s0;

.field public final e:I

.field public final f:Ljava/lang/Object;

.field public final g:J

.field public final h:J

.field public final i:Ll5/i0;


# direct methods
.method public constructor <init>(Ll5/j;Ll5/m;ILn3/s0;ILjava/lang/Object;JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ll5/i0;

    invoke-direct {v0, p1}, Ll5/i0;-><init>(Ll5/j;)V

    iput-object v0, p0, Lr4/e;->i:Ll5/i0;

    .line 3
    iput-object p2, p0, Lr4/e;->b:Ll5/m;

    .line 4
    iput p3, p0, Lr4/e;->c:I

    .line 5
    iput-object p4, p0, Lr4/e;->d:Ln3/s0;

    .line 6
    iput p5, p0, Lr4/e;->e:I

    .line 7
    iput-object p6, p0, Lr4/e;->f:Ljava/lang/Object;

    .line 8
    iput-wide p7, p0, Lr4/e;->g:J

    .line 9
    iput-wide p9, p0, Lr4/e;->h:J

    .line 10
    invoke-static {}, Lp4/r;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lr4/e;->a:J

    return-void
.end method
