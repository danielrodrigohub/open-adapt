.class public final Lh7/u;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Le7/y;


# instance fields
.field public final synthetic h:Ljava/lang/Class;

.field public final synthetic i:Le7/x;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Le7/x;)V
    .locals 0

    iput-object p1, p0, Lh7/u;->h:Ljava/lang/Class;

    iput-object p2, p0, Lh7/u;->i:Le7/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le7/h;Ll7/a;)Le7/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Le7/h;",
            "Ll7/a<",
            "TT2;>;)",
            "Le7/x<",
            "TT2;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Ll7/a;->a:Ljava/lang/Class;

    .line 2
    iget-object p2, p0, Lh7/u;->h:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Lh7/u$a;

    invoke-direct {p2, p0, p1}, Lh7/u$a;-><init>(Lh7/u;Ljava/lang/Class;)V

    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Factory[typeHierarchy="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lh7/u;->h:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh7/u;->i:Le7/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
