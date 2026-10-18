.class public final La4/n;
.super Ljava/lang/Object;
.source "TrackFragment.java"


# instance fields
.field public a:La4/c;

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:[J

.field public g:[I

.field public h:[I

.field public i:[J

.field public j:[Z

.field public k:Z

.field public l:[Z

.field public m:La4/m;

.field public final n:Lm5/w;

.field public o:Z

.field public p:J

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 2
    iput-object v1, p0, La4/n;->f:[J

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, La4/n;->g:[I

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, La4/n;->h:[I

    new-array v1, v0, [J

    .line 5
    iput-object v1, p0, La4/n;->i:[J

    new-array v1, v0, [Z

    .line 6
    iput-object v1, p0, La4/n;->j:[Z

    new-array v0, v0, [Z

    .line 7
    iput-object v0, p0, La4/n;->l:[Z

    .line 8
    new-instance v0, Lm5/w;

    invoke-direct {v0}, Lm5/w;-><init>()V

    iput-object v0, p0, La4/n;->n:Lm5/w;

    return-void
.end method
