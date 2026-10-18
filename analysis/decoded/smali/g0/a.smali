.class public final Lg0/a;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lg0/n;

.field public final synthetic i:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lg0/n;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lg0/a;->h:Lg0/n;

    iput-object p2, p0, Lg0/a;->i:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/a;->h:Lg0/n;

    iget-object v1, p0, Lg0/a;->i:Landroid/graphics/Typeface;

    check-cast v0, La0/f$a;

    .line 2
    iget-object v0, v0, La0/f$a;->j:Lz/d$e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lz/d$e;->e(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
