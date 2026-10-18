.class public final Lg7/p$b$a;
.super Lg7/p$d;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/p$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg7/p<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lg7/p$b;)V
    .locals 0

    iget-object p1, p1, Lg7/p$b;->h:Lg7/p;

    invoke-direct {p0, p1}, Lg7/p$d;-><init>(Lg7/p;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg7/p$d;->a()Lg7/p$e;

    move-result-object v0

    return-object v0
.end method
