.class public abstract Lt6/m$a;
.super Lt6/a;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt6/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt6/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Ljava/lang/CharSequence;

.field public final k:Lt6/b;

.field public final l:Z

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Lt6/m;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lt6/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lt6/m$a;->m:I

    .line 3
    iget-object v1, p1, Lt6/m;->a:Lt6/b;

    .line 4
    iput-object v1, p0, Lt6/m$a;->k:Lt6/b;

    .line 5
    iput-boolean v0, p0, Lt6/m$a;->l:Z

    .line 6
    iget p1, p1, Lt6/m;->c:I

    .line 7
    iput p1, p0, Lt6/m$a;->n:I

    .line 8
    iput-object p2, p0, Lt6/m$a;->j:Ljava/lang/CharSequence;

    return-void
.end method
