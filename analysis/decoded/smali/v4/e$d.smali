.class public Lv4/e$d;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Lv4/e$c;

.field public final j:J

.field public final k:I

.field public final l:J

.field public final m:Lr3/d;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:J

.field public final q:J

.field public final r:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lv4/e$c;JIJLr3/d;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv4/e$d;->h:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lv4/e$d;->i:Lv4/e$c;

    .line 4
    iput-wide p3, p0, Lv4/e$d;->j:J

    .line 5
    iput p5, p0, Lv4/e$d;->k:I

    .line 6
    iput-wide p6, p0, Lv4/e$d;->l:J

    .line 7
    iput-object p8, p0, Lv4/e$d;->m:Lr3/d;

    .line 8
    iput-object p9, p0, Lv4/e$d;->n:Ljava/lang/String;

    .line 9
    iput-object p10, p0, Lv4/e$d;->o:Ljava/lang/String;

    .line 10
    iput-wide p11, p0, Lv4/e$d;->p:J

    .line 11
    iput-wide p13, p0, Lv4/e$d;->q:J

    .line 12
    iput-boolean p15, p0, Lv4/e$d;->r:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    iget-wide v0, p0, Lv4/e$d;->l:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p0, Lv4/e$d;->l:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
