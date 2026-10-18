.class public abstract Lu6/h0$d;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient h:Lu6/d$b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient i:Lu6/h0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/h0$d;->h:Lu6/d$b$a;

    if-nez v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lu6/d$b;

    .line 3
    new-instance v1, Lu6/d$b$a;

    invoke-direct {v1, v0}, Lu6/d$b$a;-><init>(Lu6/d$b;)V

    .line 4
    iput-object v1, p0, Lu6/h0$d;->h:Lu6/d$b$a;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/h0$d;->i:Lu6/h0$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lu6/h0$c;

    invoke-direct {v0, p0}, Lu6/h0$c;-><init>(Ljava/util/Map;)V

    .line 3
    iput-object v0, p0, Lu6/h0$d;->i:Lu6/h0$c;

    :cond_0
    return-object v0
.end method
