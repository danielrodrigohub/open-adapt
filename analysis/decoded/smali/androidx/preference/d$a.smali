.class public final Landroidx/preference/d$a;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Landroidx/preference/d;


# direct methods
.method public constructor <init>(Landroidx/preference/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/d$a;->h:Landroidx/preference/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/preference/d$a;->h:Landroidx/preference/d;

    invoke-virtual {v0}, Landroidx/preference/d;->q()V

    return-void
.end method
