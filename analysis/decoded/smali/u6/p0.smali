.class public final Lu6/p0;
.super Lu6/v;
.source "RegularImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lu6/v<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final l:Lu6/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient j:[Ljava/lang/Object;

.field public final transient k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lu6/p0;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lu6/p0;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lu6/p0;->l:Lu6/p0;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu6/v;-><init>()V

    .line 2
    iput-object p1, p0, Lu6/p0;->j:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lu6/p0;->k:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lu6/p0;->k:I

    invoke-static {p1, v0}, Lt6/h;->c(II)I

    .line 2
    iget-object v0, p0, Lu6/p0;->j:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final k([Ljava/lang/Object;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lu6/p0;->j:[Ljava/lang/Object;

    iget v1, p0, Lu6/p0;->k:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lu6/p0;->k:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final l()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu6/p0;->j:[Ljava/lang/Object;

    return-object v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lu6/p0;->k:I

    return v0
.end method

.method public final n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lu6/p0;->k:I

    return v0
.end method
