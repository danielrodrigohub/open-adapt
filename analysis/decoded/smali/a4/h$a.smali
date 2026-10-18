.class public final La4/h$a;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:La4/l;

.field public final b:La4/o;

.field public final c:Ls3/w;

.field public final d:Ls3/x;

.field public e:I


# direct methods
.method public constructor <init>(La4/l;La4/o;Ls3/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La4/h$a;->a:La4/l;

    .line 3
    iput-object p2, p0, La4/h$a;->b:La4/o;

    .line 4
    iput-object p3, p0, La4/h$a;->c:Ls3/w;

    .line 5
    iget-object p1, p1, La4/l;->f:Ln3/s0;

    iget-object p1, p1, Ln3/s0;->s:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Ls3/x;

    invoke-direct {p1}, Ls3/x;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput-object p1, p0, La4/h$a;->d:Ls3/x;

    return-void
.end method
