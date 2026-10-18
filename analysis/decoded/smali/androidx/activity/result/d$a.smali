.class public final Landroidx/activity/result/d$a;
.super Landroidx/activity/result/c;
.source "ActivityResultRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/result/d;->d(Ljava/lang/String;Le/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/c<",
        "TI;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Le/a;

.field public final synthetic c:Landroidx/activity/result/d;


# direct methods
.method public constructor <init>(Landroidx/activity/result/d;Ljava/lang/String;Le/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/result/d$a;->c:Landroidx/activity/result/d;

    iput-object p2, p0, Landroidx/activity/result/d$a;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/d$a;->b:Le/a;

    invoke-direct {p0}, Landroidx/activity/result/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/result/d$a;->c:Landroidx/activity/result/d;

    iget-object v0, v0, Landroidx/activity/result/d;->c:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/activity/result/d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/activity/result/d$a;->c:Landroidx/activity/result/d;

    iget-object v1, v1, Landroidx/activity/result/d;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/activity/result/d$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/activity/result/d$a;->c:Landroidx/activity/result/d;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Landroidx/activity/result/d$a;->b:Le/a;

    invoke-virtual {v1, v0, v2, p1}, Landroidx/activity/result/d;->c(ILe/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Landroidx/activity/result/d$a;->c:Landroidx/activity/result/d;

    iget-object v0, v0, Landroidx/activity/result/d;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/activity/result/d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    throw p1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to launch an unregistered ActivityResultLauncher with contract "

    .line 7
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    iget-object v2, p0, Landroidx/activity/result/d$a;->b:Le/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". You must ensure the ActivityResultLauncher is registered before calling launch()."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/d$a;->c:Landroidx/activity/result/d;

    iget-object v1, p0, Landroidx/activity/result/d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/activity/result/d;->e(Ljava/lang/String;)V

    return-void
.end method
