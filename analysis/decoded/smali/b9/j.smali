.class public abstract Lb9/j;
.super Lb9/e;
.source "MessagingCenter.kt"


# instance fields
.field public final h:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lb9/e;-><init>()V

    .line 2
    iput-object p1, p0, Lb9/j;->h:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lb9/j;->h:Landroid/content/Intent;

    return-object v0
.end method

.method public abstract b(Landroid/app/Activity;)V
.end method
