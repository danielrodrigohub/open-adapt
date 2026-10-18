.class public abstract Lj5/i$g;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj5/i$g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lj5/i$g<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final h:I

.field public final i:Lp4/t0;

.field public final j:I

.field public final k:Ln3/s0;


# direct methods
.method public constructor <init>(ILp4/t0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lj5/i$g;->h:I

    .line 3
    iput-object p2, p0, Lj5/i$g;->i:Lp4/t0;

    .line 4
    iput p3, p0, Lj5/i$g;->j:I

    .line 5
    iget-object p1, p2, Lp4/t0;->k:[Ln3/s0;

    aget-object p1, p1, p3

    .line 6
    iput-object p1, p0, Lj5/i$g;->k:Ln3/s0;

    return-void
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract g(Lj5/i$g;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
