.class public abstract Lt4/k;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt4/k$d;,
        Lt4/k$c;,
        Lt4/k$b;,
        Lt4/k$a;,
        Lt4/k$e;
    }
.end annotation


# instance fields
.field public final a:Lt4/i;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Lt4/i;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt4/k;->a:Lt4/i;

    .line 3
    iput-wide p2, p0, Lt4/k;->b:J

    .line 4
    iput-wide p4, p0, Lt4/k;->c:J

    return-void
.end method


# virtual methods
.method public a(Lt4/j;)Lt4/i;
    .locals 0

    iget-object p1, p0, Lt4/k;->a:Lt4/i;

    return-object p1
.end method
