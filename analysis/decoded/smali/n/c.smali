.class public final Ln/c;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Ld3/e;

.field public c:Z


# direct methods
.method public constructor <init>(Ln/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ln/c;->a:Landroid/content/Intent;

    .line 3
    new-instance v1, Ld3/e;

    invoke-direct {v1}, Ld3/e;-><init>()V

    iput-object v1, p0, Ln/c;->b:Ld3/e;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Ln/c;->c:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object v1, p1, Ln/e;->c:Landroid/content/ComponentName;

    .line 6
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v0, p1, Ln/e;->b:La/a;

    check-cast v0, La/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p1, Ln/e;->d:Landroid/app/PendingIntent;

    .line 9
    invoke-virtual {p0, v0, p1}, Ln/c;->a(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.customtabs.extra.SESSION"

    .line 2
    invoke-static {v0, v1, p1}, Lx/i;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    if-eqz p2, :cond_0

    const-string p1, "android.support.customtabs.extra.SESSION_ID"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    :cond_0
    iget-object p1, p0, Ln/c;->a:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method
