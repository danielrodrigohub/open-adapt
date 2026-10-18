.class public final Lu4/g$e;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Lv4/e$d;

.field public final b:J

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Lv4/e$d;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu4/g$e;->a:Lv4/e$d;

    .line 3
    iput-wide p2, p0, Lu4/g$e;->b:J

    .line 4
    iput p4, p0, Lu4/g$e;->c:I

    .line 5
    instance-of p2, p1, Lv4/e$a;

    if-eqz p2, :cond_0

    check-cast p1, Lv4/e$a;

    iget-boolean p1, p1, Lv4/e$a;->t:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lu4/g$e;->d:Z

    return-void
.end method
