.class public final Lcom/nike/persistence/implementation/PersistenceManager;
.super Ljava/lang/Object;
.source "PersistenceManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/persistence/implementation/PersistenceManager$Settings;
    }
.end annotation


# instance fields
.field public a:Lcd/a;

.field public b:Landroid/content/Context;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyc/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lyc/a$c;

    .line 2
    sget-object v1, Ldd/a;->h:Ldd/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Ldd/f;

    const-string v2, "com.nike.persistence"

    invoke-direct {v1, v2}, Ldd/f;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    new-instance v1, Ldd/d;

    const-string v2, "runtime"

    invoke-direct {v1, v2}, Ldd/d;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nike/persistence/implementation/PersistenceManager;->c:Ljava/util/List;

    const-string v0, "settings.json"

    .line 6
    iput-object v0, p0, Lcom/nike/persistence/implementation/PersistenceManager;->d:Ljava/lang/String;

    return-void
.end method
