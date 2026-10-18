.class public abstract Lfa/e;
.super Ljava/lang/Object;
.source "EstimatedTimeRemaining.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa/e$e;,
        Lfa/e$b;,
        Lfa/e$d;,
        Lfa/e$c;,
        Lfa/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lfa/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lfa/e$a;

.field public static final i:I

.field public static final j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lfa/e$a;

    invoke-direct {v0}, Lfa/e$a;-><init>()V

    sput-object v0, Lfa/e;->h:Lfa/e$a;

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-int v0, v3

    sput v0, Lfa/e;->i:I

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lfa/e;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()F
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lfa/e;

    const-string v0, "other"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p0, Lfa/e$b;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lfa/e$b;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p0

    check-cast v0, Lfa/e$b;

    .line 5
    iget v1, v0, Lfa/e$b;->o:I

    mul-int/lit8 v1, v1, 0x3c

    .line 6
    iget v0, v0, Lfa/e$b;->p:I

    add-int/2addr v1, v0

    .line 7
    check-cast p1, Lfa/e$b;

    .line 8
    iget v0, p1, Lfa/e$b;->o:I

    mul-int/lit8 v0, v0, 0x3c

    .line 9
    iget p1, p1, Lfa/e$b;->p:I

    add-int/2addr v0, p1

    .line 10
    invoke-static {v0, v1}, Lp4/h;->l(II)I

    move-result p1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lfa/e;->p()I

    move-result v0

    invoke-virtual {p1}, Lfa/e;->p()I

    move-result p1

    invoke-static {v0, p1}, Lp4/h;->l(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public abstract m()J
.end method

.method public abstract o()F
.end method

.method public abstract p()I
.end method
