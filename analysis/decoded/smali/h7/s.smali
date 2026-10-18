.class public final Lh7/s;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Le7/y;


# instance fields
.field public final synthetic h:Ljava/lang/Class;

.field public final synthetic i:Ljava/lang/Class;

.field public final synthetic j:Le7/x;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Le7/x;)V
    .locals 0

    iput-object p1, p0, Lh7/s;->h:Ljava/lang/Class;

    iput-object p2, p0, Lh7/s;->i:Ljava/lang/Class;

    iput-object p3, p0, Lh7/s;->j:Le7/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le7/h;Ll7/a;)Le7/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le7/h;",
            "Ll7/a<",
            "TT;>;)",
            "Le7/x<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Ll7/a;->a:Ljava/lang/Class;

    .line 2
    iget-object p2, p0, Lh7/s;->h:Ljava/lang/Class;

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lh7/s;->i:Ljava/lang/Class;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lh7/s;->j:Le7/x;

    :goto_1
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Factory[type="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lh7/s;->i:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh7/s;->h:Ljava/lang/Class;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh7/s;->j:Le7/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
