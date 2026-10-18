.class public final Ls/b;
.super Ljava/lang/Object;
.source "ChainHead.java"


# instance fields
.field public a:Ls/d;

.field public b:Ls/d;

.field public c:Ls/d;

.field public d:Ls/d;

.field public e:Ls/d;

.field public f:Ls/d;

.field public g:Ls/d;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ls/d;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(Ls/d;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls/b;->k:F

    .line 3
    iput-object p1, p0, Ls/b;->a:Ls/d;

    .line 4
    iput p2, p0, Ls/b;->l:I

    .line 5
    iput-boolean p3, p0, Ls/b;->m:Z

    return-void
.end method
