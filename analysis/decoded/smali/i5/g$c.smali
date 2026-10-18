.class public final Li5/g$c;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Li5/g$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:I

.field public final i:Li5/d;


# direct methods
.method public constructor <init>(ILi5/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Li5/g$c;->h:I

    .line 3
    iput-object p2, p0, Li5/g$c;->i:Li5/d;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Li5/g$c;

    .line 2
    iget v0, p0, Li5/g$c;->h:I

    iget p1, p1, Li5/g$c;->h:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
