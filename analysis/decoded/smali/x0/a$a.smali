.class public final Lx0/a$a;
.super Ljava/lang/Object;
.source "EditTextPreferenceDialogFragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lx0/a;


# direct methods
.method public constructor <init>(Lx0/a;)V
    .locals 0

    iput-object p1, p0, Lx0/a$a;->h:Lx0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lx0/a$a;->h:Lx0/a;

    invoke-virtual {v0}, Lx0/a;->y0()V

    return-void
.end method
