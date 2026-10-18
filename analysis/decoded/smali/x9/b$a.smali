.class public final Lx9/b$a;
.super Ljava/lang/Object;
.source "ConditionalCheck.kt"

# interfaces
.implements Leb/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx9/b;->f()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lx9/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/b<",
            "TErrorCondition;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx9/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/b<",
            "TErrorCondition;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lx9/b$a;->h:Lx9/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lx9/b$a;->h:Lx9/b;

    invoke-virtual {v0}, Lx9/b;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lx9/b$a;->h:Lx9/b;

    invoke-virtual {v1}, Lx9/b;->b()Lv9/m;

    move-result-object v1

    invoke-virtual {v1}, Lv9/m;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConditionalCheckFailed condition: "

    const-string v3, " otherInfo["

    const-string v4, "]"

    .line 2
    invoke-static {v2, v0, v3, v1, v4}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgd/q;->h:Lgd/q;

    return-object v0
.end method
