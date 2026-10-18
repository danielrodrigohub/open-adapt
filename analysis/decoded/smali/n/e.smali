.class public final Ln/e;
.super Ljava/lang/Object;
.source "CustomTabsSession.java"


# instance fields
.field public final a:La/b;

.field public final b:La/a;

.field public final c:Landroid/content/ComponentName;

.field public final d:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(La/b;La/a;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln/e;->a:La/b;

    .line 3
    iput-object p2, p0, Ln/e;->b:La/a;

    .line 4
    iput-object p3, p0, Ln/e;->c:Landroid/content/ComponentName;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Ln/e;->d:Landroid/app/PendingIntent;

    return-void
.end method
