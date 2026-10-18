.class public final Lbd/f$a;
.super Lrd/o;
.source "SecureDataStoreImpl.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbd/f;-><init>(Landroid/content/Context;Lbd/a;Lcd/a;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lbd/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lbd/a;

.field public final synthetic i:Landroid/content/Context;

.field public final synthetic j:Lcd/a;

.field public final synthetic k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyc/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbd/a;Landroid/content/Context;Lcd/a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbd/a;",
            "Landroid/content/Context;",
            "Lcd/a;",
            "Ljava/util/List<",
            "+",
            "Lyc/a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbd/f$a;->h:Lbd/a;

    iput-object p2, p0, Lbd/f$a;->i:Landroid/content/Context;

    iput-object p3, p0, Lbd/f$a;->j:Lcd/a;

    iput-object p4, p0, Lbd/f$a;->k:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lbd/d;

    .line 2
    iget-object v1, p0, Lbd/f$a;->h:Lbd/a;

    .line 3
    new-instance v2, Lcd/d;

    iget-object v3, p0, Lbd/f$a;->i:Landroid/content/Context;

    iget-object v4, p0, Lbd/f$a;->j:Lcd/a;

    invoke-direct {v2, v3, v4}, Lcd/d;-><init>(Landroid/content/Context;Lcd/a;)V

    .line 4
    iget-object v3, p0, Lbd/f$a;->k:Ljava/util/List;

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lbd/d;-><init>(Lbd/a;Lcd/e;Ljava/util/List;)V

    return-object v0
.end method
