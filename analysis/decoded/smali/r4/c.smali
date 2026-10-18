.class public final Lr4/c;
.super Ljava/lang/Object;
.source "BaseMediaChunkOutput.java"

# interfaces
.implements Lr4/f$b;


# instance fields
.field public final a:[I

.field public final b:[Lp4/l0;


# direct methods
.method public constructor <init>([I[Lp4/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr4/c;->a:[I

    .line 3
    iput-object p2, p0, Lr4/c;->b:[Lp4/l0;

    return-void
.end method


# virtual methods
.method public final a(I)Ls3/w;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lr4/c;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lr4/c;->b:[Lp4/l0;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmatched track of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMediaChunkOutput"

    invoke-static {v0, p1}, Lm5/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Ls3/g;

    invoke-direct {p1}, Ls3/g;-><init>()V

    return-object p1
.end method
